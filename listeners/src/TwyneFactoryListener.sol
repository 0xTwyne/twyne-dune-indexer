// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import {IEulerCollateralVault} from "./interfaces/IEulerCollateralVault.sol";

contract TwyneFactoryListener is 
        CollateralVaultFactory$OnTCollateralVaultCreatedEvent,
        CollateralVaultFactory$OnTHandleExternalLiquidationEvent,
        CollateralVaultFactory$OnTSetCollateralVaultLiquidatedEvent
        // CollateralVaultFactory$PreSetCollateralVaultLiquidatedFunction
    {
    // Comprehensive vault creation tracking with database indexes
    /// @custom:index vault_created_by_vault BTREE (vaultAddress);
    /// @custom:index vault_created_by_time BTREE (blockTimestamp, blockNumber);
    /// @custom:index vault_created_by_creator BTREE (creator, blockTimestamp);
    event VaultCreated(VaultCreatedData);
    
    struct VaultCreatedData {
        address vaultAddress;
        address creator;
        address factory;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        address asset;
        address intermediateVault;
        address targetAsset;
        address targetVault;
        uint256 twyneLiqLtv;
        address twyneVaultManager;
        uint256 version;
    }

    // Event to track factory external liquidation handling
    /// @custom:index factory_handle_external_liquidation_by_factory BTREE (factoryAddress, blockTimestamp);
    event FactoryHandleExternalLiquidation(FactoryHandleExternalLiquidationData);
    struct FactoryHandleExternalLiquidationData {
        address factoryAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
    }

    // Event to track factory collateral vault liquidation status changes
    /// @custom:index factory_set_collateral_liquidated_by_factory BTREE (factoryAddress, blockTimestamp);
    /// @custom:index factory_set_collateral_liquidated_by_liquidator BTREE (liquidatorAddress, blockTimestamp);
    event FactorySetCollateralVaultLiquidated(FactorySetCollateralVaultLiquidatedData);
    struct FactorySetCollateralVaultLiquidatedData {
        address factoryAddress;
        address collateralVault;
        address liquidatorAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint256 creditReserved;
        uint256 debt;
        uint256 totalCollateral;
        uint256 userOwnedCollateral;
        uint256 twyneLiqLtv;
    }

    function onTCollateralVaultCreatedEvent(
        EventContext memory ctx, 
        CollateralVaultFactory$TCollateralVaultCreatedEventParams memory inputs
    ) external override {
        address asset = IEulerCollateralVault(inputs.vault).asset();
        address intermediateVault = IEulerCollateralVault(inputs.vault).intermediateVault();
        address targetAsset = IEulerCollateralVault(inputs.vault).targetAsset();
        address targetVault = IEulerCollateralVault(inputs.vault).targetVault();
        uint256 twyneLiqLtv = IEulerCollateralVault(inputs.vault).twyneLiqLTV();
        address twyneVaultManager = IEulerCollateralVault(inputs.vault).twyneVaultManager();
        uint256 version = IEulerCollateralVault(inputs.vault).version();
        emit VaultCreated(VaultCreatedData({
            vaultAddress: inputs.vault,
            creator: ctx.txn.call.caller(),
            factory: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            asset: asset,
            intermediateVault: intermediateVault,
            targetAsset: targetAsset,
            targetVault: targetVault,
            twyneLiqLtv: twyneLiqLtv,
            twyneVaultManager: twyneVaultManager,
            version: version
        }));
    }

    function onTHandleExternalLiquidationEvent(
        EventContext memory ctx
    ) external override {
        emit FactoryHandleExternalLiquidation(FactoryHandleExternalLiquidationData({
            factoryAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash()
        }));
    }

    function onTSetCollateralVaultLiquidatedEvent(
        EventContext memory ctx,
        CollateralVaultFactory$TSetCollateralVaultLiquidatedEventParams memory inputs
    ) external override { 
        address collateralVault = IEulerCollateralVault(inputs.collateralVault).asset();
        uint256 maxRelease = IEulerCollateralVault(inputs.collateralVault).maxRelease();
        uint256 maxRepay = IEulerCollateralVault(inputs.collateralVault).maxRepay();
        uint256 totalAssetsDepositedOrReserved = IEulerCollateralVault(inputs.collateralVault).totalAssetsDepositedOrReserved();
        uint256 userOwnedCollateral = totalAssetsDepositedOrReserved - maxRelease;
        uint256 twyneLiqLtv = IEulerCollateralVault(inputs.collateralVault).twyneLiqLTV();
        emit FactorySetCollateralVaultLiquidated(FactorySetCollateralVaultLiquidatedData({
            factoryAddress: ctx.txn.call.callee(),
            collateralVault: inputs.collateralVault,
            liquidatorAddress: inputs.liquidator,
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            creditReserved: maxRelease,
            debt: maxRepay,
            totalCollateral: totalAssetsDepositedOrReserved,
            userOwnedCollateral: userOwnedCollateral,
            twyneLiqLtv: twyneLiqLtv
        }));
    }

    function getTriggers() external view returns (Trigger[] memory) {
        Trigger[] memory triggers = new Trigger[](3);
        triggers[0] = this.triggerOnTCollateralVaultCreatedEvent();
        triggers[1] = this.triggerOnTHandleExternalLiquidationEvent();
        triggers[2] = this.triggerOnTSetCollateralVaultLiquidatedEvent();
        return triggers;
    }
}
