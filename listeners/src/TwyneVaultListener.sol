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
    EulerCollateralVault$OnLiquidateFunction,
    EulerCollateralVault$PreHandleExternalLiquidationFunction,
    EulerCollateralVault$OnTHandleExternalLiquidationEvent,
    EulerCollateralVault$OnTLeverageUpExecutedEvent,
    EulerCollateralVault$OnTLeverageDownExecutedEvent,
    EulerCollateralVault$PreRebalanceFunction,
    EulerCollateralVault$OnTRebalanceEvent,
    EulerCollateralVault$PreRedeemUnderlyingFunction,
    EulerCollateralVault$OnTRedeemUnderlyingEvent,
    EulerCollateralVault$PreSkimFunction,
    EulerCollateralVault$OnTSkimEvent
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

    // Event to track handleExternalLiquidation operations
    /// @custom:index vault_handle_external_liquidation_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_handle_external_liquidation_by_user BTREE (userAddress, blockTimestamp);
    event VaultHandleExternalLiquidation(VaultHandleExternalLiquidationData);
    struct VaultHandleExternalLiquidationData {
        uint256 chainId;
        address vaultAddress;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint256 logIndex;
    }

    // Event to track leverageUpExecuted operations
    /// @custom:index vault_leverage_up_executed_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_leverage_up_executed_by_user BTREE (userAddress, blockTimestamp);
    event VaultLeverageUpExecuted(VaultLeverageUpExecutedData);
    struct VaultLeverageUpExecutedData {
        uint256 chainId;
        address vaultAddress;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint256 logIndex;
    }

    // Event to track leverageDownExecuted operations
    /// @custom:index vault_leverage_down_executed_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_leverage_down_executed_by_user BTREE (userAddress, blockTimestamp);
    event VaultLeverageDownExecuted(VaultLeverageDownExecutedData);
    struct VaultLeverageDownExecutedData {
        uint256 chainId;
        address vaultAddress;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint256 logIndex;
    }

    // Event to track rebalance operations
    /// @custom:index vault_rebalance_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_rebalance_by_user BTREE (userAddress, blockTimestamp);
    event VaultRebalance(VaultRebalanceData);
    struct VaultRebalanceData {
        uint256 chainId;
        address vaultAddress;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint256 logIndex;
    }

    // Event to track redeemUnderlying operations
    /// @custom:index vault_redeem_underlying_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_redeem_underlying_by_user BTREE (userAddress, blockTimestamp);
    event VaultRedeemUnderlying(VaultRedeemUnderlyingData);
    struct VaultRedeemUnderlyingData {
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

    // Event to track skim operations
    /// @custom:index vault_skim_by_vault BTREE (vaultAddress, blockTimestamp);
    /// @custom:index vault_skim_by_user BTREE (userAddress, blockTimestamp);
    event VaultSkim(VaultSkimData);
    struct VaultSkimData {
        uint256 chainId;
        address vaultAddress;
        uint256 amount;
        address userAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint256 logIndex;
    }

    // Event to track position snapshot
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
        string state;
        string txType;
    }

    function _getQuote(address vaultAddress, uint256 inAmount) internal returns (uint256) {
        try IEulerRouter(IEVault(vaultAddress).oracle()).getQuote(inAmount, IEVault(vaultAddress).asset(), IEVault(vaultAddress).unitOfAccount()) returns (uint256 quote) {
            return quote;
        } catch {
            return 0;
        }
    }

    function getPositionSnapshot(address vaultAddress, string memory state, string memory txType) internal returns (PositionSnapshotData memory) {
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
            creditVaultTotalBorrows: data.creditVaultTotalBorrows,
            state: state,
            txType: txType
        });
    }

    function preHandleExternalLiquidationFunction(
        PreFunctionContext memory ctx
    ) external override {
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "pre", "handleExternalLiquidation");
        emit PositionSnapshot(snapshot);
    }

    function onTHandleExternalLiquidationEvent(
        EventContext memory ctx
    ) external override {
        emit VaultHandleExternalLiquidation(VaultHandleExternalLiquidationData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "post", "handleExternalLiquidation");
        emit PositionSnapshot(snapshot);
        logIndex += 1;
    }

    function onTLeverageUpExecutedEvent(
        EventContext memory ctx,
        EulerCollateralVault$TLeverageUpExecutedEventParams memory inputs
    ) external override {
        emit VaultLeverageUpExecuted(VaultLeverageUpExecutedData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "post", "leverageUpExecuted");
        emit PositionSnapshot(snapshot);
        logIndex += 1;
    }

    function onTLeverageDownExecutedEvent(
        EventContext memory ctx,
        EulerCollateralVault$TLeverageDownExecutedEventParams memory inputs
    ) external override {
        emit VaultLeverageDownExecuted(VaultLeverageDownExecutedData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "post", "leverageDownExecuted");
        emit PositionSnapshot(snapshot);
        logIndex += 1;
    }

    function preRebalanceFunction(
        PreFunctionContext memory ctx
    ) external override {
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "pre", "rebalance");
        emit PositionSnapshot(snapshot);
    }

    function onTRebalanceEvent(
        EventContext memory ctx
    ) external override {
        emit VaultRebalance(VaultRebalanceData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            userAddress: ctx.txn.call.caller(),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "post", "rebalance");
        emit PositionSnapshot(snapshot);
        logIndex += 1;
    }

    function preRedeemUnderlyingFunction(
        PreFunctionContext memory ctx,
        EulerCollateralVault$RedeemUnderlyingFunctionInputs memory inputs
    ) external override {
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "pre", "redeemUnderlying");
        emit PositionSnapshot(snapshot);
    }
    
    function onTRedeemUnderlyingEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TRedeemUnderlyingEventParams memory inputs
    ) external override {
        emit VaultRedeemUnderlying(VaultRedeemUnderlyingData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            amount: inputs.amount,
            receiver: inputs.receiver,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "post", "redeemUnderlying");
        emit PositionSnapshot(snapshot);
        logIndex += 1;
    }

    function preSkimFunction(
        PreFunctionContext memory ctx
    ) external override {
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "pre", "skim");
        emit PositionSnapshot(snapshot);
    }

    function onTSkimEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TSkimEventParams memory inputs
    ) external override {
        emit VaultSkim(VaultSkimData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            amount: inputs.amount,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "post", "skim");
        emit PositionSnapshot(snapshot);
        logIndex += 1;
    }

    function preDepositFunction(
        PreFunctionContext memory ctx,
        EulerCollateralVault$DepositFunctionInputs memory inputs
    ) external override {
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "pre", "deposit");
        emit PositionSnapshot(snapshot);
    }

    function onTDepositEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TDepositEventParams memory inputs
    ) external override {
        emit VaultDeposit(VaultDepositData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            amount: inputs.amount,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "post", "deposit");
        emit PositionSnapshot(snapshot);
        logIndex += 1;
    }

    function preDepositUnderlyingFunction(
        PreFunctionContext memory ctx,
        EulerCollateralVault$DepositUnderlyingFunctionInputs memory inputs
    ) external override {
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "pre", "depositUnderlying");
        emit PositionSnapshot(snapshot);
    }

    function onTDepositUnderlyingEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TDepositUnderlyingEventParams memory inputs
    ) external override {
        emit VaultDepositUnderlying(VaultDepositUnderlyingData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            amount: inputs.amount,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "post", "depositUnderlying");
        emit PositionSnapshot(snapshot);
        logIndex += 1;
    }

    function preWithdrawFunction(
        PreFunctionContext memory ctx,
        EulerCollateralVault$WithdrawFunctionInputs memory inputs
    ) external override {
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "pre", "withdraw");
        emit PositionSnapshot(snapshot);
    }

    function onTWithdrawEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TWithdrawEventParams memory inputs
    ) external override {
        emit VaultWithdraw(VaultWithdrawData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            amount: inputs.amount,
            receiver: inputs.receiver,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "post", "withdraw");
        emit PositionSnapshot(snapshot);
        logIndex += 1;
    }

    function preBorrowFunction(
        PreFunctionContext memory ctx,
        EulerCollateralVault$BorrowFunctionInputs memory inputs
    ) external override {
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "pre", "borrow");
        emit PositionSnapshot(snapshot);
    }

    function onTBorrowEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TBorrowEventParams memory inputs
    ) external override {
        emit VaultBorrow(VaultBorrowData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            targetAmount: inputs.targetAmount,
            receiver: inputs.receiver,
            borrowerAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "post", "borrow");
        emit PositionSnapshot(snapshot);
        logIndex += 1;
    }

    function preRepayFunction(
        PreFunctionContext memory ctx,
        EulerCollateralVault$RepayFunctionInputs memory inputs
    ) external override {
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "pre", "repay");
        emit PositionSnapshot(snapshot);
    }

    function onTRepayEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TRepayEventParams memory inputs
    ) external override {
        emit VaultRepay(VaultRepayData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            repayAmount: inputs.repayAmount,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "post", "repay");
        emit PositionSnapshot(snapshot);
        logIndex += 1;
    }

    function preTeleportFunction(
        PreFunctionContext memory ctx,
        EulerCollateralVault$TeleportFunctionInputs memory inputs
    ) external override {
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "pre", "teleport");
        emit PositionSnapshot(snapshot);
    }

    function onTTeleportEvent(
        EventContext memory ctx, 
        EulerCollateralVault$TTeleportEventParams memory inputs
    ) external override {
        emit VaultTeleport(VaultTeleportData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            toDeposit: inputs.toDeposit,
            toBorrow: inputs.toBorrow,
            userAddress: ctx.txn.call.caller(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            logIndex: logIndex
        }));
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "post", "teleport");
        emit PositionSnapshot(snapshot);
        logIndex += 1;
    }

    function preLiquidateFunction(
        PreFunctionContext memory ctx
    ) external override {
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "pre", "liquidate");
        emit PositionSnapshot(snapshot);
    }

    function onLiquidateFunction(
        FunctionContext memory ctx
    ) external override {
        PositionSnapshotData memory snapshot = getPositionSnapshot(ctx.txn.call.callee(), "post", "liquidate");
        emit PositionSnapshot(snapshot);
        logIndex += 1;
    }

    function getTriggers() external view returns (Trigger[] memory) {
        Trigger[] memory triggers = new Trigger[](24);
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
        triggers[14] = this.triggerPreHandleExternalLiquidationFunction();
        triggers[15] = this.triggerOnTHandleExternalLiquidationEvent();
        triggers[16] = this.triggerOnTLeverageUpExecutedEvent();
        triggers[17] = this.triggerOnTLeverageDownExecutedEvent();
        triggers[18] = this.triggerPreRebalanceFunction();
        triggers[19] = this.triggerOnTRebalanceEvent();
        triggers[20] = this.triggerPreRedeemUnderlyingFunction();
        triggers[21] = this.triggerOnTRedeemUnderlyingEvent();
        triggers[22] = this.triggerPreSkimFunction();
        triggers[23] = this.triggerOnTSkimEvent();
        return triggers;
    }
    
}