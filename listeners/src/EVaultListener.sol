// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./interfaces/IEVault.sol";

contract EVaultListener is Raw$OnBlock {
    
    // Define the vault addresses as constants
    address constant eeUSDC = 0x9B58505aAa6e15D6A3cB15f533634332a60F29D1;
    address constant eeWETH = 0xB49414341e06986FE83f17c971cCA14bD4362aF0;

    // Event to store vault data - this will create a database table
    event VaultMetrics(
        address indexed vaultAddress,
        uint256 totalAssets,
        uint256 totalBorrows,
        uint256 blockNumber,
        uint256 blockTimestamp
    );

    function onBlock(RawBlockContext memory ctx) external override {
        // Query and emit data for eeUSDC vault
        _captureVaultData(eeUSDC, ctx.blockNumber);
        
        // Query and emit data for eeWETH vault  
        _captureVaultData(eeWETH, ctx.blockNumber);
    }

    function _captureVaultData(address vaultAddress, uint256 blockNumber) internal {
        try IEVault(vaultAddress).totalAssets() returns (uint256 assets) {
            try IEVault(vaultAddress).totalBorrows() returns (uint256 borrows) {
                emit VaultMetrics(
                    vaultAddress,
                    assets,
                    borrows,
                    blockNumber,
                    block.timestamp
                );
            } catch {
                // If totalBorrows fails, emit with 0 borrows
                emit VaultMetrics(
                    vaultAddress,
                    assets,
                    0,
                    blockNumber,
                    block.timestamp
                );
            }
        } catch {
            // If totalAssets fails, try just totalBorrows
            try IEVault(vaultAddress).totalBorrows() returns (uint256 borrows) {
                emit VaultMetrics(
                    vaultAddress,
                    0,
                    borrows,
                    blockNumber,
                    block.timestamp
                );
            } catch {
                // If both fail, emit zeros (vault might be inactive)
                emit VaultMetrics(
                    vaultAddress,
                    0,
                    0,
                    blockNumber,
                    block.timestamp
                );
            }
        }
    }

    function getTriggers() external view returns (RawTrigger[] memory) {
        RawTrigger[] memory triggers = new RawTrigger[](1);
        triggers[0] = this.triggerOnBlock();
        return triggers;
    }
}