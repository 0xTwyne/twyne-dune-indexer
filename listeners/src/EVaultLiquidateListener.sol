// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import {IEVault} from "./interfaces/IEVault.sol";
import {IEulerRouter} from "./interfaces/IEulerRouter.sol";

contract EVaultLiquidateListener is 
        EVaultLiquidate$OnLiquidateEvent
        // EVaultLiquidate$PreLiquidateEvent
    {
    // Event to track external liquidation handling
    /// @custom:index external_liquidation_by_vault BTREE (vaultAddress, blockTimestamp);
    event ExternalLiquidation(ExternalLiquidationData);
    struct ExternalLiquidationData {
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

    // Struct to hold intermediate processing data to avoid stack too deep errors
    struct ProcessingData {
        address vaultAddress;
        uint256 collateralAmount;
        uint256 debtAmount;
        uint256 collateralAmountUsd;
        uint256 debtAmountUsd;
        uint256 liqLtv;
        uint256 repayAssetsUsd;
        uint256 yieldBalanceUsd;
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
        // Use ProcessingData struct to avoid stack too deep errors
        ProcessingData memory data;
        data.vaultAddress = ctx.txn.call.callee();
        
        // Populate processing data
        data.collateralAmount = _getCollateralAmount(inputs.collateral, inputs.violator);
        data.debtAmount = _getDebtAmount(data.vaultAddress, inputs.violator);
        data.collateralAmountUsd = _getQuote(inputs.collateral, data.collateralAmount);
        data.debtAmountUsd = _getQuote(data.vaultAddress, data.debtAmount);
        data.liqLtv = _getLiqLtv(inputs.collateral, data.vaultAddress);
        data.repayAssetsUsd = _getQuote(data.vaultAddress, inputs.repayAssets);
        data.yieldBalanceUsd = _getQuote(inputs.collateral, inputs.yieldBalance);

        emit ExternalLiquidation(ExternalLiquidationData({
            vaultAddress: data.vaultAddress,
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

    // function preLiquidateEvent(
    //     EventContext memory ctx, 
    //     EVaultLiquidate$PreLiquidateEventParams memory inputs
    // ) external override {
    //     
    // }

    function getTriggers() external view returns (Trigger[] memory) {
        Trigger[] memory triggers = new Trigger[](1);
        triggers[0] = this.triggerOnLiquidateEvent();
        return triggers;
    }
}
