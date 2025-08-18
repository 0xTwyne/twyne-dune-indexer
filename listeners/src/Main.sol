// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./TwyneFactoryListener.sol";
import "./TwyneVaultListener.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        TwyneFactoryListener factoryListener = new TwyneFactoryListener();
        TwyneVaultListener vaultListener = new TwyneVaultListener();
        
        // TODO: Replace with your actual CollateralVaultFactory address on Base
        // You can find this address from your deployment or contract creation transaction
        address collateralVaultFactory = 0xBe3205Ec9FF7314e9Df89d91ee28C5a22BEb1200; // UPDATE THIS ADDRESS
        
        // Register CollateralVaultFactory event listener for vault creation tracking
        // This tracks a specific factory contract address
        addTrigger(
            chainContract(Chains.Base, collateralVaultFactory),
            factoryListener.triggerOnTCollateralVaultCreatedEvent()
        );
        
        // Register EulerCollateralVault event listeners for newly created vaults
        // This will track on any EulerCollateralVault contract using the ABI
        addTriggers(
            chainAbi(Chains.Base, EulerCollateralVault$Abi()),
            vaultListener.getTriggers()
        );
    }
}
