// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import {IEulerCollateralVault} from "./interfaces/IEulerCollateralVault.sol";
import {IEulerRouter} from "./interfaces/IEulerRouter.sol";
import {IEVault} from "./interfaces/IEVault.sol";

contract TwyneVaultListener is 
    EulerCollateralVault$PreDepositFunction,
    EulerCollateralVault$OnTDepositEvent,
    EulerCollateralVault$PreDepositUnderlyingFunction,
    EulerCollateralVault$OnTDepositUnderlyingEvent,
    EulerCollateralVault$PreWithdrawFunction,
    EulerCollateralVault$OnTWithdrawEvent,
    EulerCollateralVault$PreBorrowFunction,
    EulerCollateralVault$OnTBorrowEvent,
    EulerCollateralVault$PreRepayFunction,
    EulerCollateralVault$OnTRepayEvent,
    EulerCollateralVault$PreTeleportFunction,
    EulerCollateralVault$OnTTeleportEvent,
    EulerCollateralVault$PreLiquidateFunction,
    EulerCollateralVault$OnLiquidateFunction
    {
    
    uint256 logIndex;

    // Event to track deposits with comprehensive indexing
    /// @custom:index vault_deposit_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_deposit_by_user BTREE (userAddress, blockTimestamp);
    event VaultDeposit(VaultDepositData);
    struct VaultDepositData {
        uint256 chainId;
        address vaultAddress;
        uint256 amount;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint256 logIndex;
    }

    // Event to track underlying deposits
    /// @custom:index vault_deposit_underlying_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_deposit_underlying_by_user BTREE (userAddress, blockTimestamp);
    event VaultDepositUnderlying(VaultDepositUnderlyingData);
    struct VaultDepositUnderlyingData {
        uint256 chainId;
        address vaultAddress;
        uint256 amount;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint256 logIndex;
    }

    // Event to track withdrawals
    /// @custom:index vault_withdraw_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_withdraw_by_user BTREE (userAddress, blockTimestamp);
    event VaultWithdraw(VaultWithdrawData);
    struct VaultWithdrawData {
        uint256 chainId;
        address vaultAddress;
        uint256 amount;
        address receiver;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint256 logIndex;
    }

    // Event to track borrowing
    /// @custom:index vault_borrow_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_borrow_by_user BTREE (borrowerAddress, blockTimestamp);
    event VaultBorrow(VaultBorrowData);
    struct VaultBorrowData {
        uint256 chainId;
        address vaultAddress;
        uint256 targetAmount;
        address receiver;
        address borrowerAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint256 logIndex;
    }

    // Event to track repayments
    /// @custom:index vault_repay_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_repay_by_user BTREE (userAddress, blockTimestamp);
    event VaultRepay(VaultRepayData);
    struct VaultRepayData {
        uint256 chainId;
        address vaultAddress;
        uint256 repayAmount;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint256 logIndex;
    }

    // Event to track teleport operations (combined deposit/borrow)
    /// @custom:index vault_teleport_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_teleport_by_user BTREE (userAddress, blockTimestamp);
    event VaultTeleport(VaultTeleportData);
    struct VaultTeleportData {
        uint256 chainId;
        address vaultAddress;
        uint256 toDeposit;
        uint256 toBorrow;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint256 logIndex;
    }

    /// @custom:index position_snapshot_by_vault BTREE (vaultAddress, blockTimestamp);
    event PositionSnapshot(PositionSnapshotData);
    struct PositionSnapshotData {
        uint256 chainId;
        address vaultAddress;
        address underlyingCollateralVault;
        address creditVault;
        address debtVault;
        uint256 maxRelease;
        uint256 maxRepay;
        uint256 totalAssetsDepositedOrReserved;
        uint256 userOwnedCollateral;
        uint256 twyneLiqLtv;
        bool canLiquidate;
        bool isExternallyLiquidated;
        uint256 maxReleaseUsd;
        uint256 maxRepayUsd;
        uint256 totalAssetsDepositedOrReservedUsd;
        uint256 userOwnedCollateralUsd;
        uint64 blockNumber;
        uint64 blockTimestamp;
        uint256 logIndex;
        uint256 creditVaultTotalAssets;
        uint256 creditVaultTotalBorrows;
    }

    function _getQuote(address vaultAddress, uint256 inAmount) internal returns (uint256) {
        try IEulerRouter(IEVault(vaultAddress).oracle()).getQuote(inAmount, IEVault(vaultAddress).asset(), IEVault(vaultAddress).unitOfAccount()) returns (uint256 quote) {
            return quote;
        } catch {
            return 0;
        }
    }

    function getPositionSnapshot(address vaultAddress) internal returns (PositionSnapshotData memory) {
        PositionSnapshotData memory data;
        IEulerCollateralVault collateralVault = IEulerCollateralVault(vaultAddress);
        data.creditVault = collateralVault.intermediateVault();
        data.underlyingCollateralVault = collateralVault.asset();
        data.debtVault = collateralVault.targetVault();
        data.maxRelease = collateralVault.maxRelease();
        data.maxRepay = collateralVault.maxRepay();
        data.totalAssetsDepositedOrReserved = collateralVault.totalAssetsDepositedOrReserved();
        data.userOwnedCollateral = data.totalAssetsDepositedOrReserved - data.maxRelease;
        try collateralVault.canLiquidate() returns (bool canLiquidate) {
            data.canLiquidate = canLiquidate;
        } catch {
            data.canLiquidate = false;
        }
        try collateralVault.isExternallyLiquidated() returns (bool isExternallyLiquidated) {
            data.isExternallyLiquidated = isExternallyLiquidated;
        } catch {
            data.isExternallyLiquidated = false;
        }
        data.twyneLiqLtv = collateralVault.twyneLiqLTV();

        data.maxReleaseUsd = _getQuote(data.creditVault, data.maxRelease);
        data.maxRepayUsd = _getQuote(data.debtVault, data.maxRepay);
        data.totalAssetsDepositedOrReservedUsd = _getQuote(data.creditVault, data.totalAssetsDepositedOrReserved);
        data.userOwnedCollateralUsd = _getQuote(data.creditVault, data.userOwnedCollateral);

        data.creditVaultTotalAssets = IEVault(data.creditVault).totalAssets();
        data.creditVaultTotalBorrows = IEVault(data.creditVault).totalBorrows();

        return PositionSnapshotData({
            chainId: uint256(block.chainid),
            vaultAddress: vaultAddress,
            creditVault: data.creditVault,
            underlyingCollateralVault: data.underlyingCollateralVault,
            debtVault: data.debtVault,
            maxRelease: data.maxRelease,
            maxRepay: data.maxRepay,
            totalAssetsDepositedOrReserved: data.totalAssetsDepositedOrReserved,
            userOwnedCollateral: data.userOwnedCollateral,
            twyneLiqLtv: data.twyneLiqLtv,
            canLiquidate: data.canLiquidate,
            isExternallyLiquidated: data.isExternallyLiquidated,
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            maxReleaseUsd: data.maxReleaseUsd,
            maxRepayUsd: data.maxRepayUsd,
            totalAssetsDepositedOrReservedUsd: data.totalAssetsDepositedOrReservedUsd,
            userOwnedCollateralUsd: data.userOwnedCollateralUsd,
            logIndex: logIndex,
            creditVaultTotalAssets: data.creditVaultTotalAssets,
            creditVaultTotalBorrows: data.creditVaultTotalBorrows
        });
    }

    function preDepositFunction(
        PreFunctionContext memory ctx,
        EulerCollateralVault$DepositFunctionInputs memory inputs
    ) external override {
        logIndex += 1;
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee());
        emit PositionSnapshot(snapshot);
    }

    function onTDepositEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TDepositEventParams memory inputs
    ) external override {
        address vaultAddress = ctx.txn.call.callee();
        logIndex += 1;

        emit VaultDeposit(VaultDepositData({
            chainId: uint256(block.chainid),
            vaultAddress: vaultAddress,
            amount: inputs.amount,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(vaultAddress);
        emit PositionSnapshot(snapshot);
    }

    function preDepositUnderlyingFunction(
        PreFunctionContext memory ctx,
        EulerCollateralVault$DepositUnderlyingFunctionInputs memory inputs
    ) external override {
        logIndex += 1;
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee());
        emit PositionSnapshot(snapshot);
    }

    function onTDepositUnderlyingEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TDepositUnderlyingEventParams memory inputs
    ) external override {
        address vaultAddress = ctx.txn.call.callee();
        logIndex += 1;

        emit VaultDepositUnderlying(VaultDepositUnderlyingData({
            chainId: uint256(block.chainid),
            vaultAddress: vaultAddress,
            amount: inputs.amount,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(vaultAddress);
        emit PositionSnapshot(snapshot);
    }

    function preWithdrawFunction(
        PreFunctionContext memory ctx,
        EulerCollateralVault$WithdrawFunctionInputs memory inputs
    ) external override {
        logIndex += 1;
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee());
        emit PositionSnapshot(snapshot);
    }

    function onTWithdrawEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TWithdrawEventParams memory inputs
    ) external override {
        address vaultAddress = ctx.txn.call.callee();
        logIndex += 1;

        emit VaultWithdraw(VaultWithdrawData({
            chainId: uint256(block.chainid),
            vaultAddress: vaultAddress,
            amount: inputs.amount,
            receiver: inputs.receiver,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(vaultAddress);
        emit PositionSnapshot(snapshot);
    }

    function preBorrowFunction(
        PreFunctionContext memory ctx,
        EulerCollateralVault$BorrowFunctionInputs memory inputs
    ) external override {
        logIndex += 1;
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee());
        emit PositionSnapshot(snapshot);
    }

    function onTBorrowEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TBorrowEventParams memory inputs
    ) external override {
        address vaultAddress = ctx.txn.call.callee();
        logIndex += 1;

        emit VaultBorrow(VaultBorrowData({
            chainId: uint256(block.chainid),
            vaultAddress: vaultAddress,
            targetAmount: inputs.targetAmount,
            receiver: inputs.receiver,
            borrowerAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(vaultAddress);
        emit PositionSnapshot(snapshot);
    }

    function preRepayFunction(
        PreFunctionContext memory ctx,
        EulerCollateralVault$RepayFunctionInputs memory inputs
    ) external override {
        logIndex += 1;
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee());
        emit PositionSnapshot(snapshot);
    }

    function onTRepayEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TRepayEventParams memory inputs
    ) external override {
        address vaultAddress = ctx.txn.call.callee();
        logIndex += 1;

        emit VaultRepay(VaultRepayData({
            chainId: uint256(block.chainid),
            vaultAddress: vaultAddress,
            repayAmount: inputs.repayAmount,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(vaultAddress);
        emit PositionSnapshot(snapshot);
    }

    function preTeleportFunction(
        PreFunctionContext memory ctx,
        EulerCollateralVault$TeleportFunctionInputs memory inputs
    ) external override {
        logIndex += 1;
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee());
        emit PositionSnapshot(snapshot);
    }

    function onTTeleportEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TTeleportEventParams memory inputs
    ) external override {
        address vaultAddress = ctx.txn.call.callee();
        logIndex += 1;

        emit VaultTeleport(VaultTeleportData({
            chainId: uint256(block.chainid),
            vaultAddress: vaultAddress,
            toDeposit: inputs.toDeposit,
            toBorrow: inputs.toBorrow,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(vaultAddress);
        emit PositionSnapshot(snapshot);
    }

    function preLiquidateFunction(
        PreFunctionContext memory ctx
    ) external override {
        logIndex += 1;
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee());
        emit PositionSnapshot(snapshot);
    }

    function onLiquidateFunction(
        FunctionContext memory ctx
    ) external override {
        logIndex += 1;
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee());
        emit PositionSnapshot(snapshot);
    }

    function getTriggers() external view returns (Trigger[] memory) {
        Trigger[] memory triggers = new Trigger[](14);
        triggers[0] = this.triggerPreDepositFunction();
        triggers[1] = this.triggerOnTDepositEvent();
        triggers[2] = this.triggerPreDepositUnderlyingFunction();
        triggers[3] = this.triggerOnTDepositUnderlyingEvent();
        triggers[4] = this.triggerPreWithdrawFunction();
        triggers[5] = this.triggerOnTWithdrawEvent();
        triggers[6] = this.triggerPreBorrowFunction();
        triggers[7] = this.triggerOnTBorrowEvent();
        triggers[8] = this.triggerPreRepayFunction();
        triggers[9] = this.triggerOnTRepayEvent();
        triggers[10] = this.triggerPreTeleportFunction();
        triggers[11] = this.triggerOnTTeleportEvent();
        triggers[12] = this.triggerPreLiquidateFunction();
        triggers[13] = this.triggerOnLiquidateFunction();
        return triggers;
    }
    
}