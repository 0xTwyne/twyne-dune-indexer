// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IGenericFactory {
    function getProxyListLength()
        external
        view
        returns (
            uint256 length
        );
    function proxyList( uint256 index )
        external
        view
        returns (
            address proxy
        );
}