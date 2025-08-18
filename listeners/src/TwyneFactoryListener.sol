// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";

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
    }

    function onTCollateralVaultCreatedEvent(
        EventContext memory ctx, 
        CollateralVaultFactory$TCollateralVaultCreatedEventParams memory inputs
    ) external override {
        emit VaultCreated(VaultCreatedData({
            vaultAddress: inputs.vault,
            creator: ctx.txn.call.caller(),
            factory: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash()
        }));
    }

    function getTriggers() external view returns (Trigger[] memory) {
        Trigger[] memory triggers = new Trigger[](1);
        triggers[0] = this.triggerOnTCollateralVaultCreatedEvent();
        return triggers;
    }
}
