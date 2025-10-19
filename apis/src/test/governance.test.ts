/**
 * Governance endpoint tests
 */

import { testEndpoint } from './utils/testHelpers';

export async function runGovernanceTests() {
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
}
