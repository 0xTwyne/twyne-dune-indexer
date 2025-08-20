// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./TwyneFactoryListener.sol";
import "./TwyneVaultListener.sol";
import "./PerBlockListener.sol";
import "./ChainlinkAggregatorListener.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        TwyneFactoryListener factoryListener = new TwyneFactoryListener();
        TwyneVaultListener vaultListener = new TwyneVaultListener();
        PerBlockListener perBlockListener = new PerBlockListener();
        ChainlinkAggregatorListener chainlinkAggregatorListener = new ChainlinkAggregatorListener();
        
        address collateralVaultFactory = 0xBe3205Ec9FF7314e9Df89d91ee28C5a22BEb1200; 
        address chainlinkAggregatorWeth = 0x57d2d46Fc7ff2A7142d479F2f59e1E3F95447077;
        address chainlinkAggregatorUsdc = 0x0Ee7145e1370653533e2F2E824424bE2AA95A4Aa;
        address chainlinkAggregatorUsds = 0x847BD1550634c35Ea5d6528B0414e0BE69584010;
        
        // Collateral Vault Factory
        addTriggers(
            chainContract(Chains.Base, collateralVaultFactory),
            factoryListener.getTriggers()
        );
        
        // User Collateral Vaults
        addTriggers(
            chainAbi(Chains.Base, EulerCollateralVault$Abi()),
            vaultListener.getTriggers()
        );

        // Snapshots
        addTriggers(
            chainGlobal(Chains.Base),
            perBlockListener.getTriggers()
        );
        addTriggers(
            chainGlobal(Chains.Base),
            vaultListener.getRawTriggers()
        );

        // Oracles
        addTriggers(
            chainContract(Chains.Base, chainlinkAggregatorWeth),
            chainlinkAggregatorListener.getTriggers()
        );
        addTriggers(
            chainContract(Chains.Base, chainlinkAggregatorUsdc),
            chainlinkAggregatorListener.getTriggers()
        );
        addTriggers(
            chainContract(Chains.Base, chainlinkAggregatorUsds),
            chainlinkAggregatorListener.getTriggers()
        );
        
    }
}
