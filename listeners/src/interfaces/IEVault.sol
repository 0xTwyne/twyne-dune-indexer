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
    function unitOfAccount()
        external
        view
        returns (
            address
        );
    function oracle()
        external
        view
        returns (
            address
        );
    function balanceOf(address user)
        external
        view
        returns (
            uint256
        );
    function debtOf(address user)
        external
        view
        returns (
            uint256
        );
    function LTVLiquidation(address debtVaultAddress)
        external
        view
        returns (
            uint256
        );
    function convertToAssets(uint256 shares)
        external
        view
        returns (
            uint256
        );
}