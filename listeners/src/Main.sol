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
        // Base
        // address collateralVaultFactoryBase = 0xBe3205Ec9FF7314e9Df89d91ee28C5a22BEb1200; 
        // address chainlinkAggregatorWethBase = 0x57d2d46Fc7ff2A7142d479F2f59e1E3F95447077;
        // address chainlinkAggregatorUsdcBase = 0x0Ee7145e1370653533e2F2E824424bE2AA95A4Aa;
        // address chainlinkAggregatorUsdsBase = 0x847BD1550634c35Ea5d6528B0414e0BE69584010;
        
        // Collateral Vault Factory
        addTriggers(
            chainContract(Chains.Ethereum, collateralVaultFactoryEthereum),
            factoryListener.getTriggers()
        );
        // addTriggers(
        //     chainContract(Chains.Base, collateralVaultFactoryBase),
        //     factoryListener.getTriggers()
        // );
        
        // User Collateral Vaults
        addTriggers(
            chainAbi(Chains.Ethereum, EulerCollateralVault$Abi()),
            vaultListener.getTriggers()
        );
        // addTriggers(
        //     chainAbi(Chains.Base, EulerCollateralVault$Abi()),
        //     vaultListener.getTriggers()
        // );

        // EVaults
        addTriggers(
            chainAbi(Chains.Ethereum, EVaultLiquidate$Abi()),
            evaultLiquidateListener.getTriggers()
        );
        addTriggers(
            chainAbi(Chains.Ethereum, EVault$Abi()),
            evaultParamUpdateListener.getTriggers()
        );
        // addTriggers(
        //     chainAbi(Chains.Base, EVaultLiquidate$Abi()),
        //     evaultLiquidateListener.getTriggers()
        // );

        // Snapshots
        addTriggers(
            chainGlobal(Chains.Ethereum),
            perBlockListener.getTriggers()
        );
        addTriggers(
            chainGlobal(Chains.Ethereum),
            vaultListener.getRawTriggers()
        );
        // addTriggers(
        //     chainGlobal(Chains.Base),
        //     perBlockListener.getTriggers()
        // );
        // addTriggers(
        //     chainGlobal(Chains.Base),
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
        // addTriggers(
        //     chainContract(Chains.Base, chainlinkAggregatorWethBase),
        //     chainlinkAggregatorListener.getTriggers()
        // );
        // addTriggers(
        //     chainContract(Chains.Base, chainlinkAggregatorUsdcBase),
        //     chainlinkAggregatorListener.getTriggers()
        // );
        // addTriggers(
        //     chainContract(Chains.Base, chainlinkAggregatorUsdsBase),
        //     chainlinkAggregatorListener.getTriggers()
        // );
        
    }
}
