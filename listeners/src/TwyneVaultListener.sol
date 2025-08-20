// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import {IEulerCollateralVault} from "./interfaces/IEulerCollateralVault.sol";

contract TwyneVaultListener is 
    EulerCollateralVault$OnTDepositEvent,
    EulerCollateralVault$OnTDepositUnderlyingEvent,
    EulerCollateralVault$OnTWithdrawEvent,
    EulerCollateralVault$OnTBorrowEvent,
    EulerCollateralVault$OnTRepayEvent,
    EulerCollateralVault$OnTTeleportEvent,
    Raw$OnBlock
    {
    
    // Cache to track vaults that emitted events in the current block
    mapping(address => bool) private activeVaultsInBlock;
    
    // Array to keep track of active vault addresses for iteration
    address[] private activeVaultsList;
    // Event to track deposits with comprehensive indexing
    /// @custom:index vault_deposit_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_deposit_by_user BTREE (userAddress, blockTimestamp);
    event VaultDeposit(VaultDepositData);
    struct VaultDepositData {
        address vaultAddress;
        uint256 amount;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
    }

    // Event to track underlying deposits
    /// @custom:index vault_deposit_underlying_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_deposit_underlying_by_user BTREE (userAddress, blockTimestamp);
    event VaultDepositUnderlying(VaultDepositUnderlyingData);
    struct VaultDepositUnderlyingData {
        address vaultAddress;
        uint256 amount;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
    }

    // Event to track withdrawals
    /// @custom:index vault_withdraw_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_withdraw_by_user BTREE (userAddress, blockTimestamp);
    event VaultWithdraw(VaultWithdrawData);
    struct VaultWithdrawData {
        address vaultAddress;
        uint256 amount;
        address receiver;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
    }

    // Event to track borrowing
    /// @custom:index vault_borrow_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_borrow_by_user BTREE (borrowerAddress, blockTimestamp);
    event VaultBorrow(VaultBorrowData);
    struct VaultBorrowData {
        address vaultAddress;
        uint256 targetAmount;
        address receiver;
        address borrowerAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
    }

    // Event to track repayments
    /// @custom:index vault_repay_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_repay_by_user BTREE (userAddress, blockTimestamp);
    event VaultRepay(VaultRepayData);
    struct VaultRepayData {
        address vaultAddress;
        uint256 repayAmount;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
    }

    // Event to track teleport operations (combined deposit/borrow)
    /// @custom:index vault_teleport_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_teleport_by_user BTREE (userAddress, blockTimestamp);
    event VaultTeleport(VaultTeleportData);
    struct VaultTeleportData {
        address vaultAddress;
        uint256 toDeposit;
        uint256 toBorrow;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
    }

    /// @custom:index position_snapshot_by_vault BTREE (vaultAddress, blockTimestamp);
    event PositionSnapshot(PositionSnapshotData);
    struct PositionSnapshotData {
        address vaultAddress;
        uint256 maxRelease;
        uint256 maxRepay;
        uint256 totalAssetsDepositedOrReserved;
        uint256 userOwnedCollateral;
        // uint256 twyneLiqLtv;
        bool canLiquidate;
        bool isExternallyLiquidated;
        uint64 blockNumber;
        uint64 blockTimestamp;
    }

    function getPositionSnapshot(address vaultAddress) internal view returns (PositionSnapshotData memory) {
        IEulerCollateralVault collateralVault = IEulerCollateralVault(vaultAddress);
        uint256 maxRelease = collateralVault.maxRelease();
        uint256 maxRepay = collateralVault.maxRepay();
        uint256 totalAssetsDepositedOrReserved = collateralVault.totalAssetsDepositedOrReserved();
        uint256 userOwnedCollateral = totalAssetsDepositedOrReserved - maxRelease;
        bool canLiquidate = collateralVault.canLiquidate();
        bool isExternallyLiquidated = collateralVault.isExternallyLiquidated();
        // uint256 twyneLiqLtv = collateralVault.twyneLiqLtv();

        return PositionSnapshotData({
            vaultAddress: vaultAddress,
            maxRelease: maxRelease,
            maxRepay: maxRepay,
            totalAssetsDepositedOrReserved: totalAssetsDepositedOrReserved,
            userOwnedCollateral: userOwnedCollateral,
            // twyneLiqLtv: twyneLiqLtv,
            canLiquidate: canLiquidate,
            isExternallyLiquidated: isExternallyLiquidated,
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp)
        });
    }

    function onTDepositEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TDepositEventParams memory inputs
    ) external override {
        address vaultAddress = ctx.txn.call.callee();
        
        // Cache the vault address for end-of-block processing
        if (!activeVaultsInBlock[vaultAddress]) {
            activeVaultsInBlock[vaultAddress] = true;
            activeVaultsList.push(vaultAddress);
        }

        emit VaultDeposit(VaultDepositData({
            vaultAddress: vaultAddress,
            amount: inputs.amount,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash()
        }));
    }

    function onTDepositUnderlyingEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TDepositUnderlyingEventParams memory inputs
    ) external override {
        address vaultAddress = ctx.txn.call.callee();
        
        // Cache the vault address for end-of-block processing
        if (!activeVaultsInBlock[vaultAddress]) {
            activeVaultsInBlock[vaultAddress] = true;
            activeVaultsList.push(vaultAddress);
        }

        emit VaultDepositUnderlying(VaultDepositUnderlyingData({
            vaultAddress: vaultAddress,
            amount: inputs.amount,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash()
        }));
    }

    function onTWithdrawEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TWithdrawEventParams memory inputs
    ) external override {
        address vaultAddress = ctx.txn.call.callee();
        
        // Cache the vault address for end-of-block processing
        if (!activeVaultsInBlock[vaultAddress]) {
            activeVaultsInBlock[vaultAddress] = true;
            activeVaultsList.push(vaultAddress);
        }

        emit VaultWithdraw(VaultWithdrawData({
            vaultAddress: vaultAddress,
            amount: inputs.amount,
            receiver: inputs.receiver,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash()
        }));
    }

    function onTBorrowEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TBorrowEventParams memory inputs
    ) external override {
        address vaultAddress = ctx.txn.call.callee();
        
        // Cache the vault address for end-of-block processing
        if (!activeVaultsInBlock[vaultAddress]) {
            activeVaultsInBlock[vaultAddress] = true;
            activeVaultsList.push(vaultAddress);
        }

        emit VaultBorrow(VaultBorrowData({
            vaultAddress: vaultAddress,
            targetAmount: inputs.targetAmount,
            receiver: inputs.receiver,
            borrowerAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash()
        }));
    }

    function onTRepayEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TRepayEventParams memory inputs
    ) external override {
        address vaultAddress = ctx.txn.call.callee();
        
        // Cache the vault address for end-of-block processing
        if (!activeVaultsInBlock[vaultAddress]) {
            activeVaultsInBlock[vaultAddress] = true;
            activeVaultsList.push(vaultAddress);
        }

        emit VaultRepay(VaultRepayData({
            vaultAddress: vaultAddress,
            repayAmount: inputs.repayAmount,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash()
        }));
    }

    function onTTeleportEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TTeleportEventParams memory inputs
    ) external override {
        address vaultAddress = ctx.txn.call.callee();
        
        // Cache the vault address for end-of-block processing
        if (!activeVaultsInBlock[vaultAddress]) {
            activeVaultsInBlock[vaultAddress] = true;
            activeVaultsList.push(vaultAddress);
        }

        emit VaultTeleport(VaultTeleportData({
            vaultAddress: vaultAddress,
            toDeposit: inputs.toDeposit,
            toBorrow: inputs.toBorrow,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash()
        }));
    }

    function onBlock(RawBlockContext memory ctx) external override {
        // Process all vaults that emitted events during this block
        if (activeVaultsList.length > 0) {
            _processActiveVaults();
            _clearCache();
        }
    }
    
    function _processActiveVaults() internal {
        for (uint256 i = 0; i < activeVaultsList.length; i++) {
            address vaultAddress = activeVaultsList[i];
            
            // Use try-catch with external calls to handle potential failures
            try IEulerCollateralVault(vaultAddress).maxRelease() returns (uint256) {
                PositionSnapshotData memory snapshot = getPositionSnapshot(vaultAddress);
                emit PositionSnapshot(snapshot);
            } catch {
                // If snapshot retrieval fails, continue with next vault
                // This prevents the entire block processing from failing due to one vault
                continue;
            }
        }
    }
    
    function _clearCache() internal {
        // Clear the mapping
        for (uint256 i = 0; i < activeVaultsList.length; i++) {
            delete activeVaultsInBlock[activeVaultsList[i]];
        }
        // Clear the array
        delete activeVaultsList;
    }


    function getTriggers() external view returns (Trigger[] memory) {
        Trigger[] memory triggers = new Trigger[](6);
        triggers[0] = this.triggerOnTDepositEvent();
        triggers[1] = this.triggerOnTDepositUnderlyingEvent();
        triggers[2] = this.triggerOnTWithdrawEvent();
        triggers[3] = this.triggerOnTBorrowEvent();
        triggers[4] = this.triggerOnTRepayEvent();
        triggers[5] = this.triggerOnTTeleportEvent();
        return triggers;
    }
    
    function getRawTriggers() external view returns (RawTrigger[] memory) {
        RawTrigger[] memory triggers = new RawTrigger[](1);
        triggers[0] = this.triggerOnBlock();
        return triggers;
    }
}