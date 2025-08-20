// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IEVault {
    function totalAssets()
        external
        view
        returns (
            uint256 totalAssets
        );
    function totalBorrows()
        external
        view
        returns (
            uint256 totalBorrows
        );
    function asset()
        external
        view
        returns (
            address
        );
}