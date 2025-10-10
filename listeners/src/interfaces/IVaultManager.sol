// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IVaultManager {
    function allowedTargetVaultList(
        address underlyingVault,
        uint256 index
    )
        external
        view
        returns (
            address targetVault
        );
    function targetVaultLength(
        address underlyingVault
    )
        external
        view
        returns (
            uint256 length
        );
    function maxTwyneLTVs(
        address collateralAddress
    )
        external
        view
        returns (
            uint256 maxTwyneLiqLTV
        );
    function externalLiqBuffers(
        address collateralAddress
    )
        external
        view
        returns (
            uint256 externalLiqBuffer
        );
}