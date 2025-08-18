// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Vm} from "forge-std/Vm.sol";
import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import {MockContexts} from "sim-idx-sol/test/MockContexts.sol";
import "../src/TwyneFactoryListener.sol";
import "../src/TwyneVaultListener.sol";

contract ListenerTest is Test {
    TwyneFactoryListener public factoryListener;
    TwyneVaultListener public vaultListener;

    function setUp() public {
        factoryListener = new TwyneFactoryListener();
        vaultListener = new TwyneVaultListener();
        vm.recordLogs();
    }

    function testFactoryListenerTriggers() public {
        Trigger[] memory triggers = factoryListener.getTriggers();
        assertEq(triggers.length, 1);
        assertEq(triggers[0].abiName, "CollateralVaultFactory");
    }

    function testVaultListenerTriggers() public {
        Trigger[] memory triggers = vaultListener.getTriggers();
        assertEq(triggers.length, 6);
        assertEq(triggers[0].abiName, "EulerCollateralVault");
    }
}
