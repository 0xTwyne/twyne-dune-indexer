/**
 * Chainlink endpoint tests
 */

import { testEndpoint } from './utils/testHelpers';

export async function runChainlinkTests() {
  console.log('📍 Chainlink Endpoints');
  await testEndpoint('/api/chainlink/latest-answers', 200, 'Get latest Chainlink answers');
  await testEndpoint('/api/chainlink/latest-answers?chainIds=1', 200, 'Latest Chainlink answers with chain filter');
  console.log();
}
