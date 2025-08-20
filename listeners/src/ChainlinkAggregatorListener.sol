// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
// import {IEulerCollateralVault} from "./interfaces/IEulerCollateralVault.sol";

contract ChainlinkAggregatorListener is 
    ChainlinkAggregator$OnAnswerUpdatedEvent
{
    event AnswerUpdated(AnswerUpdatedData);
    
    struct AnswerUpdatedData {
        int256 current;
        uint256 roundId;
        uint256 updatedAt;
        bytes32 txnHash;
        uint64 blockNumber;
        uint64 blockTimestamp;
        address aggregator;
    }

    function onAnswerUpdatedEvent(
        EventContext memory ctx, 
        ChainlinkAggregator$AnswerUpdatedEventParams memory inputs
    ) external override {
        emit AnswerUpdated(AnswerUpdatedData({
            current: inputs.current,
            roundId: inputs.roundId,
            updatedAt: inputs.updatedAt,
            txnHash: ctx.txn.hash(),
            blockNumber: uint64(block.number),
            blockTimestamp: uint64(block.timestamp),
            aggregator: ctx.txn.call.callee()
        }));
    }

    function getTriggers() external view returns (Trigger[] memory) {
        Trigger[] memory triggers = new Trigger[](1);
        triggers[0] = this.triggerOnAnswerUpdatedEvent();
        return triggers;
    }
}
