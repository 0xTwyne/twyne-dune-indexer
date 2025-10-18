/**
 * Health endpoint tests
 */

import { testEndpoint } from './utils/testHelpers';

export async function runHealthTests() {
  console.log('📍 Health Check');
  await testEndpoint('/api/health', 200, 'Health check');
  await testEndpoint('/api/health?chainIds=1', 200, 'Health check with chainId filter');
  console.log();
}
