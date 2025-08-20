// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
// import {IEVault} from "./interfaces/IEVault.sol";

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
    }

    function onLiquidateEvent(
        EventContext memory ctx, 
        EVaultLiquidate$LiquidateEventParams memory inputs
    ) external override {
        emit ExternalLiquidation(ExternalLiquidationData({
            vaultAddress: ctx.txn.call.callee(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            txnHash: ctx.txn.hash(),
            liquidator: inputs.liquidator,
            violator: inputs.violator,
            collateral: inputs.collateral,
            repayAssets: inputs.repayAssets,
            yieldBalance: inputs.yieldBalance
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
