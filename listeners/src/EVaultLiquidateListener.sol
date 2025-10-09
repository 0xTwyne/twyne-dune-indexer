// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import {IEVault} from "./interfaces/IEVault.sol";
import {IEulerRouter} from "./interfaces/IEulerRouter.sol";
import {IEulerCollateralVault} from "./interfaces/IEulerCollateralVault.sol";
import {IVaultManager} from "./interfaces/IVaultManager.sol";

contract EVaultLiquidateListener is 
        EVaultLiquidate$OnLiquidateEvent,
        EVaultLiquidate$PreLiquidateFunction
    {
    // Event to track external liquidation handling
    /// @custom:index external_liquidation_by_vault BTREE (vaultAddress, blockTimestamp);
    event ExternalLiquidation(ExternalLiquidationData);
    struct ExternalLiquidationData {
        uint256 chainId;
        address vaultAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        address liquidator;
        address violator;
        address collateral;
        uint256 repayAssets;
        uint256 yieldBalance;
        uint256 repayAssetsUsd;
        uint256 yieldBalanceUsd;
        uint256 collateralAmount;
        uint256 debtAmount;
        uint256 collateralAmountUsd;
        uint256 debtAmountUsd;
        uint256 liqLtv;
    }

    event PreExternalLiquidation(PreExternalLiquidationData);
    struct PreExternalLiquidationData {
        uint256 chainId;
        address vaultAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        address violator;
        address collateral;
        uint256 collateralAmount;
        uint256 debtAmount;
        uint256 collateralAmountUsd;
        uint256 debtAmountUsd;
        uint256 eulerLiqLtv;
        uint256 twyneLiqLtv;
        uint256 creditReserved;
        uint256 creditReservedUsd;
        uint256 twyneMaxLiqLtv;
        uint256 twyneSafetyBuffer;
    }

    // Struct to hold intermediate processing data to avoid stack too deep errors
    struct LiquidationData {
        uint256 collateralAmount;
        uint256 debtAmount;
        uint256 collateralAmountUsd;
        uint256 debtAmountUsd;
        uint256 liqLtv;
        uint256 repayAssetsUsd;
        uint256 yieldBalanceUsd;
    }

    struct PreLiquidationData {
        uint256 collateralAmount;
        uint256 debtAmount;
        uint256 collateralAmountUsd;
        uint256 debtAmountUsd;
        uint256 eulerLiqLtv;
        uint256 twyneLiqLtv;
        uint256 creditReserved;
        uint256 creditReservedUsd;
        uint256 twyneMaxLiqLtv;
        uint256 twyneSafetyBuffer;
    }

    function _getCollateralAmount(address collateralVaultAddress, address userAddress) internal returns (uint256) {
        try IEVault(collateralVaultAddress).convertToAssets(IEVault(collateralVaultAddress).balanceOf(userAddress)) returns (uint256 collateralAmount) {
            return collateralAmount;
        } catch {
            return 0;
        }
    }

    function _getDebtAmount(address debtVaultAddress, address userAddress) internal returns (uint256) {
        try IEVault(debtVaultAddress).debtOf(userAddress) returns (uint256 debtAmount) {
            return debtAmount;
        } catch {
            return 0;
        }
    }

    function _getQuote(address vaultAddress, uint256 inAmount) internal returns (uint256) {
        try IEulerRouter(IEVault(vaultAddress).oracle()).getQuote(inAmount, IEVault(vaultAddress).asset(), IEVault(vaultAddress).unitOfAccount()) returns (uint256 quote) {
            return quote;
        } catch {
            return 0;
        }
    }

    function _getLiqLtv(address collateralVaultAddress, address debtVaultAddress) internal returns (uint256) {
        try IEVault(debtVaultAddress).LTVLiquidation(collateralVaultAddress) returns (uint256 liqLtv) {
            return liqLtv;
        } catch {
            return 0;
        }
    }

    function onLiquidateEvent(
        EventContext memory ctx, 
        EVaultLiquidate$LiquidateEventParams memory inputs
    ) external override {
        // Use LiquidationData struct to avoid stack too deep errors
        LiquidationData memory data;
        
        // Populate processing data
        data.collateralAmount = _getCollateralAmount(inputs.collateral, inputs.violator);
        data.debtAmount = _getDebtAmount(ctx.txn.call.callee(), inputs.violator);
        data.collateralAmountUsd = _getQuote(inputs.collateral, data.collateralAmount);
        data.debtAmountUsd = _getQuote(ctx.txn.call.callee(), data.debtAmount);
        data.liqLtv = _getLiqLtv(inputs.collateral, ctx.txn.call.callee());
        data.repayAssetsUsd = _getQuote(ctx.txn.call.callee(), inputs.repayAssets);
        data.yieldBalanceUsd = _getQuote(inputs.collateral, inputs.yieldBalance);

        emit ExternalLiquidation(ExternalLiquidationData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            liquidator: inputs.liquidator,
            violator: inputs.violator,
            collateral: inputs.collateral,
            repayAssets: inputs.repayAssets,
            yieldBalance: inputs.yieldBalance,
            repayAssetsUsd: data.repayAssetsUsd,
            yieldBalanceUsd: data.yieldBalanceUsd,
            collateralAmount: data.collateralAmount,
            debtAmount: data.debtAmount,
            collateralAmountUsd: data.collateralAmountUsd,
            debtAmountUsd: data.debtAmountUsd,
            liqLtv: data.liqLtv
        }));
    }

    function preLiquidateFunction(
        PreFunctionContext memory ctx, 
        EVaultLiquidate$LiquidateFunctionInputs memory inputs
    ) external override {
        PreLiquidationData memory data;
        data.collateralAmount = _getCollateralAmount(inputs.collateral, inputs.violator);
        data.debtAmount = _getDebtAmount(ctx.txn.call.callee(), inputs.violator);
        data.collateralAmountUsd = _getQuote(inputs.collateral, data.collateralAmount);
        data.debtAmountUsd = _getQuote(ctx.txn.call.callee(), data.debtAmount);
        data.eulerLiqLtv = _getLiqLtv(inputs.collateral, ctx.txn.call.callee());

        try IEulerCollateralVault(inputs.violator).twyneLiqLTV() returns (uint256 twyneLiqLtv) {
            data.twyneLiqLtv = twyneLiqLtv;
        } catch {
            data.twyneLiqLtv = 0;
        }
        try IEulerCollateralVault(inputs.violator).maxRelease() returns (uint256 creditReserved) {
            data.creditReserved = creditReserved;
        } catch {
            data.creditReserved = 0;
        }
        data.creditReservedUsd = _getQuote(inputs.collateral, data.creditReserved);
        try IVaultManager(IEulerCollateralVault(inputs.violator).twyneVaultManager()).maxTwyneLTVs(IEulerCollateralVault(inputs.violator).asset()) returns (uint256 twyneMaxLiqLtv) {
            data.twyneMaxLiqLtv = twyneMaxLiqLtv;
        } catch {
            data.twyneMaxLiqLtv = 0;
        }
        try IVaultManager(IEulerCollateralVault(inputs.violator).twyneVaultManager()).externalLiqBuffers(IEulerCollateralVault(inputs.violator).asset()) returns (uint256 twyneSafetyBuffer) {
            data.twyneSafetyBuffer = twyneSafetyBuffer;
        } catch {
            data.twyneSafetyBuffer = 0;
        }

        emit PreExternalLiquidation(PreExternalLiquidationData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            violator: inputs.violator,
            collateral: inputs.collateral,
            collateralAmount: data.collateralAmount,
            debtAmount: data.debtAmount,
            collateralAmountUsd: data.collateralAmountUsd,
            debtAmountUsd: data.debtAmountUsd,
            eulerLiqLtv: data.eulerLiqLtv,
            twyneLiqLtv: data.twyneLiqLtv,
            creditReserved: data.creditReserved,
            creditReservedUsd: data.creditReservedUsd,
            twyneMaxLiqLtv: data.twyneMaxLiqLtv,
            twyneSafetyBuffer: data.twyneSafetyBuffer
        }));
    }

    function getTriggers() external view returns (Trigger[] memory) {
        Trigger[] memory triggers = new Trigger[](2);
        triggers[0] = this.triggerOnLiquidateEvent();
        triggers[1] = this.triggerPreLiquidateFunction();
        return triggers;
    }
}
