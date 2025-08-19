// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import {IEulerCollateralVault} from "./interfaces/IEulerCollateralVault.sol";

contract TwyneFactoryListener is 
    CollateralVaultFactory$OnTCollateralVaultCreatedEvent 
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

    function onTCollateralVaultCreatedEvent(
        EventContext memory ctx, 
        CollateralVaultFactory$TCollateralVaultCreatedEventParams memory inputs
    ) external override {
        address asset = IEulerCollateralVault(inputs.vault).asset();
        address intermediateVault = IEulerCollateralVault(inputs.vault).intermediateVault();
        address targetAsset = IEulerCollateralVault(inputs.vault).targetAsset();
        address targetVault = IEulerCollateralVault(inputs.vault).targetVault();
        uint256 twyneLiqLtv = IEulerCollateralVault(inputs.vault).twyneLiqLtv();
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

    function getTriggers() external view returns (Trigger[] memory) {
        Trigger[] memory triggers = new Trigger[](1);
        triggers[0] = this.triggerOnTCollateralVaultCreatedEvent();
        return triggers;
    }
}
