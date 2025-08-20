// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./interfaces/IEVault.sol";
import "./interfaces/IGenericFactory.sol";
import "./interfaces/IVaultManager.sol";

contract PerBlockListener is Raw$OnBlock {
    
    // Define the vault addresses as constants
    // address genericFactory = 0xd5e966dB359f1cB2A01280fCCBEB839Ac572CE35;
    // address vaultManager = 0x5357426530F997E03Fcf8F68bdB4a7ac6ABa5d9f;
    // 
    // function getAllVaults() external view returns (address[] memory) {
    //     uint256 length = IGenericFactory(genericFactory).getProxyListLength();
    //     address[] memory vaults = new address[](length);
    //     // mapping (address => bool) vaults;
    // 
    //     for (uint256 i = 0; i < length; i++) {
    //         vaultAddress = IGenericFactory(genericFactory).proxyList(i);
    //         // vaults[vaultAddress]=true;
    //         vaults[i] = vaultAddress;
    //         vault = IEVault(vaultAddress);
    //         underlyingVaultAddress = vault.asset();
    //         // vaults[underlyingVaultAddress]=true;
    //         vaults[i] = underlyingVaultAddress;
    //         targetVaultsLength = IVaultManager(vaultManager).targetVaultLength(underlyingVaultAddress);
    //         for (uint256 j = 0; j < targetVaultsLength; j++) {
    //             targetVault = IVaultManager(vaultManager).allowedTargetVaultList(underlyingVaultAddress, j);
    //             // vaults[targetVault]=true;
    //             vaults[i] = targetVault;
    //         }
    //     }
    //     address[] memory vaultsArray = new address[](vaults.length);
    //     for (uint256 i = 0; i < length; i++) {
    //         vaultsArray[i] = vaults[i];
    //     }
    //     return vaultsArray;
    // }

    // Define underlying vaults
    // Define target vaults
    // Take a set of all vaults
    // store the addresses and iterate through them


    // Event to store vault data - this will create a database table
    event VaultMetrics(
        address indexed vaultAddress,
        uint256 totalAssets,
        uint256 totalBorrows,
        uint256 blockNumber,
        uint256 blockTimestamp
    );

    function onBlock(RawBlockContext memory ctx) external override {
        // address[] memory vaults = getAllVaults();
        address[] memory vaults = new address[](5);
        address eeUsdc = 0x9B58505aAa6e15D6A3cB15f533634332a60F29D1;
        address eeWeth = 0xB49414341e06986FE83f17c971cCA14bD4362aF0;
        address eUsdc = 0x0A1a3b5f2041F33522C4efc754a7D096f880eE16;
        address eWeth = 0x859160DB5841E5cfB8D3f144C6b3381A85A4b410;
        address eUsds = 0x556d518FDFDCC4027A3A1388699c5E11AC201D8b;
        vaults[0] = eeUsdc;
        vaults[1] = eeWeth;
        vaults[2] = eUsdc;
        vaults[3] = eWeth;
        vaults[4] = eUsds;
        for (uint256 i = 0; i < vaults.length; i++) {
            _captureVaultData(vaults[i], ctx.blockNumber);
        }
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