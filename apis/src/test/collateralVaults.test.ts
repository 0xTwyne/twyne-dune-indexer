/**
 * Collateral Vaults endpoint tests
 */

import { testEndpoint } from './utils/testHelpers';

export async function runCollateralVaultsTests() {
  // Collateral Vaults Endpoints
  console.log('📍 Collateral Vaults Endpoints');
  await testEndpoint('/api/collateralVaults', 200, 'Get all collateral vaults');
  await testEndpoint('/api/collateralVaults?limit=10&offset=0', 200, 'Collateral vaults with pagination');
  await testEndpoint('/api/collateralVaults?chainIds=1', 200, 'Collateral vaults filtered by chain');
  await testEndpoint('/api/collateralVaults?chainIds=1,8453', 200, 'Collateral vaults with multiple chains');
  await testEndpoint('/api/collateralVaults?endBlock=20000000', 200, 'Collateral vaults with block filter');
  await testEndpoint('/api/collateralVaults?limit=200', 200, 'Collateral vaults with max limit (capped at 100)');
  await testEndpoint('/api/collateralVaults?limit=invalid', 400, 'Collateral vaults with invalid limit', 400);
  console.log();

  // Snapshot at Block Endpoints
  console.log('📍 Snapshot at Block Endpoints');
  await testEndpoint('/api/collateralVaults/snapshots', 200, 'Snapshot at latest block (no blockNumber)');
  await testEndpoint('/api/collateralVaults/snapshots?limit=5', 200, 'Latest snapshot with limit');
  await testEndpoint('/api/collateralVaults/snapshots?canLiquidate=true', 200, 'Latest snapshot - can liquidate');
  await testEndpoint('/api/collateralVaults/snapshots?canLiquidate=false', 200, 'Latest snapshot - cannot liquidate');
  await testEndpoint('/api/collateralVaults/snapshots?isExternallyLiquidated=true', 200, 'Latest snapshot - externally liquidated');
  await testEndpoint('/api/collateralVaults/snapshots?isExternallyLiquidated=false', 200, 'Latest snapshot - not externally liquidated');
  await testEndpoint('/api/collateralVaults/snapshots?chainIds=1', 200, 'Latest snapshot with chain filter');
  await testEndpoint('/api/collateralVaults/snapshots?limit=-1', 400, 'Latest snapshot with invalid limit', 400);
  await testEndpoint('/api/collateralVaults/snapshots?offset=-1', 400, 'Latest snapshot with invalid offset', 400);
  console.log();

  // Vault Address Filtering
  console.log('📍 Vault Address Filtering');
  await testEndpoint('/api/collateralVaults/snapshots?vaultAddresses=invalid', 400, 'Invalid vault address format', 400);
  await testEndpoint('/api/collateralVaults/snapshots?vaultAddresses=0x123', 400, 'Vault address too short', 400);
  await testEndpoint('/api/collateralVaults/snapshots?vaultAddresses=0xZZZZ1234567890123456789012345678901234', 400, 'Vault address invalid hex', 400);
  await testEndpoint(
    '/api/collateralVaults/snapshots?vaultAddresses=0x0000000000000000000000000000000000000001',
    200,
    'Valid address filter (may be empty)'
  );
  await testEndpoint(
    '/api/collateralVaults/snapshots?vaultAddresses=0x0000000000000000000000000000000000000001,0x0000000000000000000000000000000000000002',
    200,
    'Multiple vault addresses filter'
  );
  await testEndpoint(
    '/api/collateralVaults/snapshots?blockNumber=23590163&vaultAddresses=0x0000000000000000000000000000000000000001',
    200,
    'Vault address filter at specific block'
  );
  console.log();

  // Vault History Endpoints
  console.log('📍 Vault History Endpoints');
  await testEndpoint('/api/collateralVaults/invalid/history', 400, 'Invalid address in history', 400);
  await testEndpoint(
    '/api/collateralVaults/0x0000000000000000000000000000000000000001/history',
    404,
    'Valid address history but vault not found',
    404
  );
  await testEndpoint(
    '/api/collateralVaults/0x0000000000000000000000000000000000000001/history?limit=10&offset=0',
    404,
    'Vault history with pagination',
    404
  );
  console.log();

  // Snapshot at Block with specific block numbers
  console.log('📍 Historical Snapshot at Block Tests');
  await testEndpoint('/api/collateralVaults/snapshots?blockNumber=invalid', 400, 'Invalid blockNumber format', 400);
  await testEndpoint('/api/collateralVaults/snapshots?blockNumber=-1', 400, 'Negative blockNumber', 400);
  await testEndpoint('/api/collateralVaults/snapshots?blockNumber=23000000', 200, 'Snapshot at specific block (historical)');
  await testEndpoint('/api/collateralVaults/snapshots?blockNumber=23590163', 200, 'Snapshot at recent block');
  await testEndpoint('/api/collateralVaults/snapshots?blockNumber=23590163&chainIds=1', 200, 'Snapshot at block with chain filter');
  await testEndpoint('/api/collateralVaults/snapshots?blockNumber=23590163&includeRawAmounts=false', 200, 'Snapshot without raw amounts');
  await testEndpoint('/api/collateralVaults/snapshots?blockNumber=23590163&includePricedAmounts=false', 200, 'Snapshot without priced amounts');
  await testEndpoint('/api/collateralVaults/snapshots?blockNumber=23590163&includeRawAmounts=true&includePricedAmounts=true', 200, 'Snapshot with both amounts');
  await testEndpoint('/api/collateralVaults/snapshots?blockNumber=23590163&limit=10&offset=0', 200, 'Snapshot at block with pagination');
  await testEndpoint('/api/collateralVaults/snapshots?blockNumber=23590163&canLiquidate=true', 200, 'Snapshot at block - can liquidate');
  await testEndpoint('/api/collateralVaults/snapshots?blockNumber=23590163&isExternallyLiquidated=true', 200, 'Snapshot at block - externally liquidated');
  await testEndpoint('/api/collateralVaults/snapshots?blockNumber=1000000', 200, 'Snapshot at early block (may be empty)');
  await testEndpoint('/api/collateralVaults/snapshots?blockNumber=99999999', 200, 'Snapshot at future block (should be empty)');
  console.log();

  // External Liquidations
  console.log('📍 External Liquidations Endpoints');
  await testEndpoint('/api/collateralVaults/external-liquidations', 200, 'Get external liquidations');
  await testEndpoint('/api/collateralVaults/external-liquidations?limit=10', 200, 'External liquidations with limit');
  await testEndpoint('/api/collateralVaults/external-liquidations?chainIds=1', 200, 'External liquidations with chain filter');
  await testEndpoint('/api/collateralVaults/external-liquidations?limit=invalid', 400, 'External liquidations invalid limit', 400);
  console.log();

  // Internal Liquidations
  console.log('📍 Internal Liquidations Endpoints');
  await testEndpoint('/api/collateralVaults/internal-liquidations', 200, 'Get internal liquidations');
  await testEndpoint('/api/collateralVaults/internal-liquidations?limit=10', 200, 'Internal liquidations with limit');
  await testEndpoint('/api/collateralVaults/internal-liquidations?chainIds=1', 200, 'Internal liquidations with chain filter');
  await testEndpoint('/api/collateralVaults/internal-liquidations?startBlock=1000000', 200, 'Internal liquidations with start block');
  await testEndpoint('/api/collateralVaults/internal-liquidations?endBlock=2000000', 200, 'Internal liquidations with end block');
  await testEndpoint('/api/collateralVaults/internal-liquidations?startTimestamp=1700000000', 200, 'Internal liquidations with start timestamp');
  await testEndpoint('/api/collateralVaults/internal-liquidations?endTimestamp=1800000000', 200, 'Internal liquidations with end timestamp');
  await testEndpoint('/api/collateralVaults/internal-liquidations?startBlock=invalid', 400, 'Internal liquidations invalid start block', 400);
  console.log();
}
