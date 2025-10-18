/**
 * Protocol Stats endpoint tests
 */

import { testEndpoint } from './utils/testHelpers';

export async function runProtocolStatsTests() {
  console.log('📍 Protocol Stats');
  await testEndpoint('/api/protocolStats', 200, 'Get protocol statistics');
  await testEndpoint('/api/protocolStats?chainIds=1', 200, 'Protocol stats with chain filter');
  console.log();
}
