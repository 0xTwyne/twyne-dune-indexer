// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./interfaces/IEVault.sol";
import "./interfaces/IGenericFactory.sol";
import "./interfaces/IVaultManager.sol";
import "./interfaces/IEulerRouter.sol";

contract PerBlockListener is Raw$OnBlock {

    // Event to store vault data - this will create a database table
    event VaultMetrics(
        uint256 chainId,
        address indexed vaultAddress,
        uint256 totalAssets,
        uint256 totalAssetsUsd,
        uint256 totalBorrows,
        uint256 totalBorrowsUsd,
        address asset,
        uint256 interestRate,
        string symbol,
        string name,
        uint256 decimals,
        uint256 blockNumber,
        uint256 blockTimestamp
    );

    // Struct to hold vault metrics data to avoid stack too deep errors
    struct VaultMetricsData {
        uint256 totalAssets;
        uint256 totalBorrows;
        uint256 totalAssetsUsd;
        uint256 totalBorrowsUsd;
        address asset;
        uint256 interestRate;
        string symbol;
        string name;
        uint256 decimals;
    }

    function onBlock(RawBlockContext memory ctx) external override {
        if (block.chainid == 1) { // Ethereum mainnet
            if (ctx.blockNumber % 10 == 0) {
                address[] memory vaults = new address[](6);
                address eeWeth = 0x87b8081A3ace680f35125F469526Ac10f5418Ca7;
                address eUsdc = 0x797DD80692c3b2dAdabCe8e30C07fDE5307D48a9;
                address eWeth = 0xD8b27CF359b7D15710a5BE299AF6e7Bf904984C2;
                address eUsdt = 0x313603FA690301b0CaeEf8069c065862f9162162;
                address eWbtc = 0x998D761eC1BAdaCeb064624cc3A1d37A46C88bA4;
                address eWsteth = 0xbC4B4AC47582c3E38Ce5940B80Da65401F4628f1;
                vaults[0] = eeWeth;
                vaults[1] = eUsdc;
                vaults[2] = eWeth;
                vaults[3] = eUsdt;
                vaults[4] = eWbtc;
                vaults[5] = eWsteth;
                for (uint256 i = 0; i < vaults.length; i++) {
                    _captureVaultData(vaults[i], ctx.blockNumber);
                }
            }
        } // else if (block.chainid == 8453) { // Base mainnet
          //   if (ctx.blockNumber % 100 == 0) {
          //       address[] memory vaults = new address[](5);
          //       address eeUsdc = 0x9B58505aAa6e15D6A3cB15f533634332a60F29D1;
          //       address eeWeth = 0xB49414341e06986FE83f17c971cCA14bD4362aF0;
          //       address eUsdc = 0x0A1a3b5f2041F33522C4efc754a7D096f880eE16;
          //       address eWeth = 0x859160DB5841E5cfB8D3f144C6b3381A85A4b410;
          //       address eUsds = 0x556d518FDFDCC4027A3A1388699c5E11AC201D8b;
          //       vaults[0] = eeUsdc;
          //       vaults[1] = eeWeth;
          //       vaults[2] = eUsdc;
          //       vaults[3] = eWeth;
          //       vaults[4] = eUsds;
          //       for (uint256 i = 0; i < vaults.length; i++) {
          //           _captureVaultData(vaults[i], ctx.blockNumber);
          //       }
          //   }
        }

    function _getTotalAssets(address vaultAddress) internal returns (uint256) {
        try IEVault(vaultAddress).totalAssets() returns (uint256 assets) {
            return assets;
        } catch {
            return 0;
        }
    }

    function _getBorrows(address vaultAddress) internal returns (uint256) {
        try IEVault(vaultAddress).totalBorrows() returns (uint256 borrows) {
            return borrows;
        } catch {
            return 0;
        }
    }

    function _getQuote(address vaultAddress, uint256 inAmount) internal returns (uint256) {
        try IEulerRouter(IEVault(vaultAddress).oracle()).getQuote(inAmount, IEVault(vaultAddress).asset(), IEVault(vaultAddress).unitOfAccount()) returns (uint256 quote) {
            return quote;
        } catch {
            return 0;
        }
    }

    function _captureVaultData(address vaultAddress, uint256 blockNumber) internal {
        // Use VaultMetricsData struct to avoid stack too deep errors
        VaultMetricsData memory data;
        
        // Populate vault metrics data
        data.totalAssets = _getTotalAssets(vaultAddress);
        data.totalBorrows = _getBorrows(vaultAddress);
        data.totalAssetsUsd = _getQuote(vaultAddress, data.totalAssets);
        data.totalBorrowsUsd = _getQuote(vaultAddress, data.totalBorrows);
        data.decimals = IEVault(vaultAddress).decimals();
        data.asset = IEVault(vaultAddress).asset();
        data.interestRate = IEVault(vaultAddress).interestRate();
        data.symbol = IEVault(vaultAddress).symbol();
        data.name = IEVault(vaultAddress).name();
        
        emit VaultMetrics(
            uint256(block.chainid),
            vaultAddress,
            data.totalAssets,
            data.totalAssetsUsd,
            data.totalBorrows,
            data.totalBorrowsUsd,
            data.asset,
            data.interestRate,
            data.symbol,
            data.name,
            data.decimals,
            blockNumber,
            block.timestamp
        );
    }

    function getTriggers() external view returns (RawTrigger[] memory) {
        RawTrigger[] memory triggers = new RawTrigger[](1);
        triggers[0] = this.triggerOnBlock();
        return triggers;
    }
}