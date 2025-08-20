// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IEulerCollateralVault {
    function asset()
        external
        view
        returns (
            address asset
        );
    function intermediateVault()
        external
        view
        returns (
            address intermediateVault
        );
    function maxRelease()
        external
        view
        returns (uint256);
    function maxRepay()
        external
        view
        returns (uint256);
    function totalAssetsDepositedOrReserved()
        external
        view
        returns (uint256);
    function targetAsset()
        external
        view
        returns (
            address targetAsset
        );
    function targetVault()
        external
        view
        returns (
            address targetVault
        );
    function twyneLiqLtv()
        external
        view
        returns (uint256);
    function twyneVaultManager()
        external
        view
        returns (address);
    function version()
        external
        view
        returns (uint256);
    function canLiquidate()
        external
        view
        returns (bool);
    function isExternallyLiquidated()
        external
        view
        returns (bool);
}