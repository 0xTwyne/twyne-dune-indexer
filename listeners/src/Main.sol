// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./TwyneFactoryListener.sol";
import "./TwyneVaultListener.sol";
import "./PerBlockListener.sol";
import "./ChainlinkAggregatorListener.sol";
import "./EVaultLiquidateListener.sol";
import "./EVaultParamUpdateListener.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        TwyneFactoryListener factoryListener = new TwyneFactoryListener();
        TwyneVaultListener vaultListener = new TwyneVaultListener();
        PerBlockListener perBlockListener = new PerBlockListener();
        ChainlinkAggregatorListener chainlinkAggregatorListener = new ChainlinkAggregatorListener();
        EVaultLiquidateListener evaultLiquidateListener = new EVaultLiquidateListener();
        EVaultParamUpdateListener evaultParamUpdateListener = new EVaultParamUpdateListener();

        // Ethereum
        address collateralVaultFactoryEthereum = 0xa1517cCe0bE75700A8838EA1cEE0dc383cd3A332;
        address chainlinkAggregatorWethEthereum = 0x7d4E742018fb52E48b08BE73d041C18B21de6Fb5;
        address chainlinkAggregatorUsdcEthereum = 0xc9E1a09622afdB659913fefE800fEaE5DBbFe9d7;
        address chainlinkAggregatorUsdtEthereum = 0x0d5F4aADf3fde31BBB55dB5F42C080F18aD54Df5;
        address chainlinkAggregatorWbtcEthereum = 0x4a3411ac2948B33c69666B35cc6d055B27Ea84f1;
        
        // Collateral Vault Factory
        addTriggers(
            chainContract(Chains.Ethereum, collateralVaultFactoryEthereum),
            factoryListener.getTriggers()
        );
        
        // User Collateral Vaults
        addTriggers(
            chainAbi(Chains.Ethereum, EulerCollateralVault$Abi()),
            vaultListener.getTriggers()
        );

        // EVaults
        addTriggers(
            chainAbi(Chains.Ethereum, EVaultLiquidate$Abi()),
            evaultLiquidateListener.getTriggers()
        );
        addTriggers(
            chainAbi(Chains.Ethereum, EVault$Abi()),
            evaultParamUpdateListener.getTriggers()
        );

        // Snapshots
        addTriggers(
            chainGlobal(Chains.Ethereum),
            perBlockListener.getTriggers()
        );
        // addTriggers(
        //     chainGlobal(Chains.Ethereum),
        //     vaultListener.getRawTriggers()
        // );

        // Oracles
        addTriggers(
            chainContract(Chains.Ethereum, chainlinkAggregatorWethEthereum),
            chainlinkAggregatorListener.getTriggers()
        );
        addTriggers(
            chainContract(Chains.Ethereum, chainlinkAggregatorUsdcEthereum),
            chainlinkAggregatorListener.getTriggers()
        );
        addTriggers(
            chainContract(Chains.Ethereum, chainlinkAggregatorUsdtEthereum),
            chainlinkAggregatorListener.getTriggers()
        );
        addTriggers(
            chainContract(Chains.Ethereum, chainlinkAggregatorWbtcEthereum),
            chainlinkAggregatorListener.getTriggers()
        );
        
    }
}
