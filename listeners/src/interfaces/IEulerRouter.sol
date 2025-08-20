// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IEulerRouter {
    function getQuote(
        uint256 inAmount,
        address base,
        address quote
    )
        external
        view
        returns (
            uint256 outAmount
        );
}