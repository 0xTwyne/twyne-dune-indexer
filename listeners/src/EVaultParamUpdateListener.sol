// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";

contract EVaultParamUpdateListener is
        EVault$OnGovSetCapsEvent,
        EVault$OnGovSetConfigFlagsEvent,
        EVault$OnGovSetFeeReceiverEvent,
        EVault$OnGovSetGovernorAdminEvent,
        EVault$OnGovSetHookConfigEvent,
        EVault$OnGovSetInterestFeeEvent,
        EVault$OnGovSetInterestRateModelEvent,
        EVault$OnGovSetLtvEvent,
        EVault$OnGovSetLiquidationCoolOffTimeEvent,
        EVault$OnGovSetMaxLiquidationDiscountEvent
    {
    // Event data structures with metadata for each GovSet event
    event GovSetCaps(GovSetCapsData);
    struct GovSetCapsData {
        uint256 chainId;
        address vaultAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint16 newSupplyCap;
        uint16 newBorrowCap;
    }

    event GovSetConfigFlags(GovSetConfigFlagsData);
    struct GovSetConfigFlagsData {
        uint256 chainId;
        address vaultAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint32 newConfigFlags;
    }

    event GovSetFeeReceiver(GovSetFeeReceiverData);
    struct GovSetFeeReceiverData {
        uint256 chainId;
        address vaultAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        address newFeeReceiver;
    }

    event GovSetGovernorAdmin(GovSetGovernorAdminData);
    struct GovSetGovernorAdminData {
        uint256 chainId;
        address vaultAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        address newGovernorAdmin;
    }

    event GovSetHookConfig(GovSetHookConfigData);
    struct GovSetHookConfigData {
        uint256 chainId;
        address vaultAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        address newHookTarget;
        uint32 newHookedOps;
    }

    event GovSetInterestFee(GovSetInterestFeeData);
    struct GovSetInterestFeeData {
        uint256 chainId;
        address vaultAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint16 newFee;
    }

    event GovSetInterestRateModel(GovSetInterestRateModelData);
    struct GovSetInterestRateModelData {
        uint256 chainId;
        address vaultAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        address newInterestRateModel;
    }

    event GovSetLtv(GovSetLtvData);
    struct GovSetLtvData {
        uint256 chainId;
        address vaultAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        address collateral;
        uint16 borrowLTV;
        uint16 liquidationLTV;
        uint16 initialLiquidationLTV;
        uint48 targetTimestamp;
        uint32 rampDuration;
    }

    event GovSetLiquidationCoolOffTime(GovSetLiquidationCoolOffTimeData);
    struct GovSetLiquidationCoolOffTimeData {
        uint256 chainId;
        address vaultAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint16 newCoolOffTime;
    }

    event GovSetMaxLiquidationDiscount(GovSetMaxLiquidationDiscountData);
    struct GovSetMaxLiquidationDiscountData {
        uint256 chainId;
        address vaultAddress;
        uint64 blockNumber;
        uint64 blockTimestamp;
        bytes32 txnHash;
        uint16 newDiscount;
    }

    // Handler functions for each GovSet event
    function onGovSetCapsEvent(
        EventContext memory ctx,
        EVault$GovSetCapsEventParams memory inputs
    ) external override {
        emit GovSetCaps(GovSetCapsData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            newSupplyCap: inputs.newSupplyCap,
            newBorrowCap: inputs.newBorrowCap
        }));
    }

    function onGovSetConfigFlagsEvent(
        EventContext memory ctx,
        EVault$GovSetConfigFlagsEventParams memory inputs
    ) external override {
        emit GovSetConfigFlags(GovSetConfigFlagsData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            newConfigFlags: inputs.newConfigFlags
        }));
    }

    function onGovSetFeeReceiverEvent(
        EventContext memory ctx,
        EVault$GovSetFeeReceiverEventParams memory inputs
    ) external override {
        emit GovSetFeeReceiver(GovSetFeeReceiverData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            newFeeReceiver: inputs.newFeeReceiver
        }));
    }

    function onGovSetGovernorAdminEvent(
        EventContext memory ctx,
        EVault$GovSetGovernorAdminEventParams memory inputs
    ) external override {
        emit GovSetGovernorAdmin(GovSetGovernorAdminData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            newGovernorAdmin: inputs.newGovernorAdmin
        }));
    }

    function onGovSetHookConfigEvent(
        EventContext memory ctx,
        EVault$GovSetHookConfigEventParams memory inputs
    ) external override {
        emit GovSetHookConfig(GovSetHookConfigData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            newHookTarget: inputs.newHookTarget,
            newHookedOps: inputs.newHookedOps
        }));
    }

    function onGovSetInterestFeeEvent(
        EventContext memory ctx,
        EVault$GovSetInterestFeeEventParams memory inputs
    ) external override {
        emit GovSetInterestFee(GovSetInterestFeeData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            newFee: inputs.newFee
        }));
    }

    function onGovSetInterestRateModelEvent(
        EventContext memory ctx,
        EVault$GovSetInterestRateModelEventParams memory inputs
    ) external override {
        emit GovSetInterestRateModel(GovSetInterestRateModelData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            newInterestRateModel: inputs.newInterestRateModel
        }));
    }

    function onGovSetLtvEvent(
        EventContext memory ctx,
        EVault$GovSetLtvEventParams memory inputs
    ) external override {
        emit GovSetLtv(GovSetLtvData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            collateral: inputs.collateral,
            borrowLTV: inputs.borrowLTV,
            liquidationLTV: inputs.liquidationLTV,
            initialLiquidationLTV: inputs.initialLiquidationLTV,
            targetTimestamp: inputs.targetTimestamp,
            rampDuration: inputs.rampDuration
        }));
    }

    function onGovSetLiquidationCoolOffTimeEvent(
        EventContext memory ctx,
        EVault$GovSetLiquidationCoolOffTimeEventParams memory inputs
    ) external override {
        emit GovSetLiquidationCoolOffTime(GovSetLiquidationCoolOffTimeData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            newCoolOffTime: inputs.newCoolOffTime
        }));
    }

    function onGovSetMaxLiquidationDiscountEvent(
        EventContext memory ctx,
        EVault$GovSetMaxLiquidationDiscountEventParams memory inputs
    ) external override {
        emit GovSetMaxLiquidationDiscount(GovSetMaxLiquidationDiscountData({
            chainId: uint256(block.chainid),
            vaultAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            newDiscount: inputs.newDiscount
        }));
    }

    function getTriggers() external view returns (Trigger[] memory) {
        Trigger[] memory triggers = new Trigger[](10);
        triggers[0] = this.triggerOnGovSetCapsEvent();
        triggers[1] = this.triggerOnGovSetConfigFlagsEvent();
        triggers[2] = this.triggerOnGovSetFeeReceiverEvent();
        triggers[3] = this.triggerOnGovSetGovernorAdminEvent();
        triggers[4] = this.triggerOnGovSetHookConfigEvent();
        triggers[5] = this.triggerOnGovSetInterestFeeEvent();
        triggers[6] = this.triggerOnGovSetInterestRateModelEvent();
        triggers[7] = this.triggerOnGovSetLtvEvent();
        triggers[8] = this.triggerOnGovSetLiquidationCoolOffTimeEvent();
        triggers[9] = this.triggerOnGovSetMaxLiquidationDiscountEvent();
        return triggers;
    }
}
