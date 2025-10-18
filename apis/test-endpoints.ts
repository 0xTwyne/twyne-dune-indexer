/**
 * Comprehensive API endpoint tests
 * Run with: cd apis && pnpm tsx test-endpoints.ts
 * Make sure the dev server is running: cd apis && pnpm dev (in another terminal)
 */

const BASE_URL = 'http://localhost:8787';

interface TestResult {
  endpoint: string;
  method: string;
  status: 'PASS' | 'FAIL';
  statusCode?: number;
  error?: string;
  duration?: number;
}

const results: TestResult[] = [];

async function testEndpoint(
  endpoint: string,
  expectedStatus: number = 200,
  description: string = ''
): Promise<void> {
  const startTime = Date.now();
  try {
    const response = await fetch(`${BASE_URL}${endpoint}`);
    const duration = Date.now() - startTime;

    if (response.status === expectedStatus) {
      const data = await response.json();
      console.log(`✓ ${description || endpoint} (${duration}ms)`);
      results.push({
        endpoint,
        method: 'GET',
        status: 'PASS',
        statusCode: response.status,
        duration
      });
    } else {
      const text = await response.text();
      console.error(`✗ ${description || endpoint} - Expected ${expectedStatus}, got ${response.status}`);
      console.error(`  Response: ${text.substring(0, 200)}`);
      results.push({
        endpoint,
        method: 'GET',
        status: 'FAIL',
        statusCode: response.status,
        error: `Expected ${expectedStatus}, got ${response.status}`,
        duration
      });
    }
  } catch (error) {
    const duration = Date.now() - startTime;
    console.error(`✗ ${description || endpoint} - Error: ${(error as Error).message}`);
    results.push({
      endpoint,
      method: 'GET',
      status: 'FAIL',
      error: (error as Error).message,
      duration
    });
  }
}

async function runTests() {
  console.log('🧪 Starting API endpoint tests...\n');
  console.log(`Testing against: ${BASE_URL}\n`);

  // Health Check
  console.log('📍 Health Check');
  await testEndpoint('/api/health', 200, 'Health check');
  await testEndpoint('/api/health?chainIds=1', 200, 'Health check with chainId filter');
  console.log();

  // Collateral Vaults
  console.log('📍 Collateral Vaults Endpoints');
  await testEndpoint('/api/collateralVaults', 200, 'Get all collateral vaults');
  await testEndpoint('/api/collateralVaults?limit=10&offset=0', 200, 'Collateral vaults with pagination');
  await testEndpoint('/api/collateralVaults?chainIds=1', 200, 'Collateral vaults filtered by chain');
  await testEndpoint('/api/collateralVaults?chainIds=1,8453', 200, 'Collateral vaults with multiple chains');
  await testEndpoint('/api/collateralVaults?endBlock=20000000', 200, 'Collateral vaults with block filter');
  await testEndpoint('/api/collateralVaults?limit=200', 200, 'Collateral vaults with max limit (capped at 100)');
  await testEndpoint('/api/collateralVaults?limit=invalid', 400, 'Collateral vaults with invalid limit', 400);
  console.log();

  // Latest Snapshots
  console.log('📍 Latest Snapshots Endpoints');
  await testEndpoint('/api/collateralVaults/latest-snapshots', 200, 'Get latest snapshots');
  await testEndpoint('/api/collateralVaults/latest-snapshots?limit=5', 200, 'Latest snapshots with limit');
  await testEndpoint('/api/collateralVaults/latest-snapshots?canLiquidate=true', 200, 'Latest snapshots - can liquidate');
  await testEndpoint('/api/collateralVaults/latest-snapshots?canLiquidate=false', 200, 'Latest snapshots - cannot liquidate');
  await testEndpoint('/api/collateralVaults/latest-snapshots?isExternallyLiquidated=true', 200, 'Latest snapshots - externally liquidated');
  await testEndpoint('/api/collateralVaults/latest-snapshots?isExternallyLiquidated=false', 200, 'Latest snapshots - not externally liquidated');
  await testEndpoint('/api/collateralVaults/latest-snapshots?chainIds=1', 200, 'Latest snapshots with chain filter');
  await testEndpoint('/api/collateralVaults/latest-snapshots?limit=-1', 400, 'Latest snapshots with invalid limit', 400);
  await testEndpoint('/api/collateralVaults/latest-snapshots?offset=-1', 400, 'Latest snapshots with invalid offset', 400);
  console.log();

  // Specific Vault Snapshot (will need a valid address from the database)
  console.log('📍 Specific Vault Endpoints');
  // Test with invalid addresses first
  await testEndpoint('/api/collateralVaults/invalid/latest-snapshot', 400, 'Invalid vault address format', 400);
  await testEndpoint('/api/collateralVaults/0x123/latest-snapshot', 400, 'Vault address too short', 400);
  await testEndpoint('/api/collateralVaults/0xZZZZ1234567890123456789012345678901234/latest-snapshot', 400, 'Vault address invalid hex', 400);

  // Test with a potentially valid address (might 404 if not in DB, which is ok)
  await testEndpoint(
    '/api/collateralVaults/0x0000000000000000000000000000000000000001/latest-snapshot',
    404,
    'Valid address format but vault not found',
    404
  );
  console.log();

  // Vault History
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

  // Snapshot at Block
  console.log('📍 Snapshot at Block Endpoints');
  await testEndpoint('/api/collateralVaults/snapshot-at-block', 400, 'Missing blockNumber parameter', 400);
  await testEndpoint('/api/collateralVaults/snapshot-at-block?blockNumber=invalid', 400, 'Invalid blockNumber format', 400);
  await testEndpoint('/api/collateralVaults/snapshot-at-block?blockNumber=-1', 400, 'Negative blockNumber', 400);
  await testEndpoint('/api/collateralVaults/snapshot-at-block?blockNumber=23000000', 200, 'Snapshot at specific block (historical)');
  await testEndpoint('/api/collateralVaults/snapshot-at-block?blockNumber=23590163', 200, 'Snapshot at recent block');
  await testEndpoint('/api/collateralVaults/snapshot-at-block?blockNumber=23590163&chainIds=1', 200, 'Snapshot at block with chain filter');
  await testEndpoint('/api/collateralVaults/snapshot-at-block?blockNumber=23590163&includeRawAmounts=false', 200, 'Snapshot without raw amounts');
  await testEndpoint('/api/collateralVaults/snapshot-at-block?blockNumber=23590163&includePricedAmounts=false', 200, 'Snapshot without priced amounts');
  await testEndpoint('/api/collateralVaults/snapshot-at-block?blockNumber=23590163&includeRawAmounts=true&includePricedAmounts=true', 200, 'Snapshot with both amounts');
  await testEndpoint('/api/collateralVaults/snapshot-at-block?blockNumber=1000000', 200, 'Snapshot at early block (may be empty)');
  await testEndpoint('/api/collateralVaults/snapshot-at-block?blockNumber=99999999', 200, 'Snapshot at future block (should be empty)');
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

  // EVault Metrics
  console.log('📍 EVault Metrics Endpoints');
  await testEndpoint('/api/evault/0x0000000000000000000000000000000000000001/metrics', 200, 'EVault metrics (may be empty)');
  await testEndpoint('/api/evault/invalid/metrics', 400, 'EVault metrics invalid address', 400);
  await testEndpoint('/api/evault/0x0000000000000000000000000000000000000001/metrics?limit=10', 200, 'EVault metrics with limit');
  await testEndpoint('/api/evault/0x0000000000000000000000000000000000000001/metrics?startBlock=1000000', 200, 'EVault metrics with block filter');
  console.log();

  // Latest EVault Metrics
  console.log('📍 Latest EVault Metrics');
  await testEndpoint('/api/evaults/latest', 200, 'Get latest EVault metrics');
  await testEndpoint('/api/evaults/latest?chainIds=1', 200, 'Latest EVault metrics with chain filter');
  console.log();

  // Chainlink
  console.log('📍 Chainlink Endpoints');
  await testEndpoint('/api/chainlink/latest-answers', 200, 'Get latest Chainlink answers');
  await testEndpoint('/api/chainlink/latest-answers?chainIds=1', 200, 'Latest Chainlink answers with chain filter');
  console.log();

  // Protocol Stats
  console.log('📍 Protocol Stats');
  await testEndpoint('/api/protocolStats', 200, 'Get protocol statistics');
  await testEndpoint('/api/protocolStats?chainIds=1', 200, 'Protocol stats with chain filter');
  console.log();

  // Governance Endpoints
  console.log('📍 Governance Endpoints');
  const govEndpoints = [
    'gov-set-caps',
    'gov-set-config-flags',
    'gov-set-fee-receiver',
    'gov-set-governor-admin',
    'gov-set-hook-config',
    'gov-set-interest-fee',
    'gov-set-interest-rate-model',
    'gov-set-liquidation-cool-off-time',
    'gov-set-ltv',
    'gov-set-max-liquidation-discount'
  ];

  for (const endpoint of govEndpoints) {
    await testEndpoint(`/api/${endpoint}`, 200, `Get ${endpoint}`);
    await testEndpoint(`/api/${endpoint}?limit=10`, 200, `${endpoint} with limit`);
    await testEndpoint(`/api/${endpoint}?chainIds=1`, 200, `${endpoint} with chain filter`);
    await testEndpoint(
      `/api/${endpoint}?vaultAddress=0x0000000000000000000000000000000000000001`,
      200,
      `${endpoint} with vault filter`
    );
    await testEndpoint(`/api/${endpoint}?vaultAddress=invalid`, 400, `${endpoint} invalid vault address`, 400);
  }
  console.log();

  // Summary
  console.log('\n' + '='.repeat(50));
  console.log('📊 Test Summary');
  console.log('='.repeat(50));

  const passed = results.filter(r => r.status === 'PASS').length;
  const failed = results.filter(r => r.status === 'FAIL').length;
  const total = results.length;

  console.log(`Total tests: ${total}`);
  console.log(`✓ Passed: ${passed}`);
  console.log(`✗ Failed: ${failed}`);
  console.log(`Success rate: ${((passed / total) * 100).toFixed(1)}%`);

  if (failed > 0) {
    console.log('\n❌ Failed tests:');
    results
      .filter(r => r.status === 'FAIL')
      .forEach(r => {
        console.log(`  - ${r.endpoint}: ${r.error || 'Status code mismatch'}`);
      });
    process.exit(1);
  } else {
    console.log('\n✅ All tests passed!');
    process.exit(0);
  }
}

// Run tests
runTests().catch(error => {
  console.error('Fatal error:', error);
  process.exit(1);
});
