/**
 * EVault endpoint tests
 */

import { testEndpoint } from './utils/testHelpers';

export async function runEVaultTests() {
  // EVault Metrics Endpoints
  console.log('📍 EVault Metrics Endpoints');
  await testEndpoint('/api/evault/0x0000000000000000000000000000000000000001/metrics', 200, 'EVault metrics (may be empty)');
  await testEndpoint('/api/evault/invalid/metrics', 400, 'EVault metrics invalid address', 400);
  await testEndpoint('/api/evault/0x0000000000000000000000000000000000000001/metrics?limit=10', 200, 'EVault metrics with limit');
  await testEndpoint('/api/evault/0x0000000000000000000000000000000000000001/metrics?startBlock=1000000', 200, 'EVault metrics with block filter');
  console.log();

  // Latest EVault Metrics (with optional blockNumber/timestamp)
  console.log('📍 Latest EVault Metrics');
  await testEndpoint('/api/evaults/latest', 200, 'Get latest EVault metrics (no parameters)');
  await testEndpoint('/api/evaults/latest?chainIds=1', 200, 'Latest EVault metrics with chain filter');
  await testEndpoint('/api/evaults/latest?limit=10', 200, 'Latest EVault metrics with limit');
  await testEndpoint('/api/evaults/latest?limit=10&offset=5', 200, 'Latest EVault metrics with pagination');
  await testEndpoint('/api/evaults/latest?limit=-1', 400, 'Latest EVault metrics with invalid limit', 400);
  await testEndpoint('/api/evaults/latest?offset=-1', 400, 'Latest EVault metrics with invalid offset', 400);
  await testEndpoint('/api/evaults/latest?blockNumber=23000000', 200, 'EVault metrics at specific block');
  await testEndpoint('/api/evaults/latest?blockNumber=23590163', 200, 'EVault metrics at recent block');
  await testEndpoint('/api/evaults/latest?blockNumber=23590163&chainIds=1', 200, 'EVault metrics at block with chain filter');
  await testEndpoint('/api/evaults/latest?blockNumber=invalid', 400, 'EVault metrics with invalid blockNumber', 400);
  await testEndpoint('/api/evaults/latest?blockNumber=-1', 400, 'EVault metrics with negative blockNumber', 400);
  await testEndpoint('/api/evaults/latest?timestamp=1758000000', 200, 'EVault metrics at specific timestamp');
  await testEndpoint('/api/evaults/latest?timestamp=1760000000', 200, 'EVault metrics at recent timestamp');
  await testEndpoint('/api/evaults/latest?timestamp=1760000000&chainIds=1', 200, 'EVault metrics at timestamp with chain filter');
  await testEndpoint('/api/evaults/latest?timestamp=invalid', 400, 'EVault metrics with invalid timestamp', 400);
  await testEndpoint('/api/evaults/latest?timestamp=-1', 400, 'EVault metrics with negative timestamp', 400);
  await testEndpoint('/api/evaults/latest?blockNumber=23590163&timestamp=1760000000', 200, 'EVault metrics with both block and timestamp (block prioritized)');
  console.log();
}
