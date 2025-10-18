/**
 * Test runner for API endpoints
 *
 * Usage:
 *   pnpm test              - Run all tests
 *   pnpm test health       - Run only health tests
 *   pnpm test evaults      - Run only EVault tests
 *   pnpm test collateral   - Run only collateral vault tests
 *   pnpm test governance   - Run only governance tests
 *   pnpm test chainlink    - Run only chainlink tests
 *   pnpm test protocol     - Run only protocol stats tests
 */

import { printSummary, getExitCode, BASE_URL } from './src/test/utils/testHelpers';
import { runHealthTests } from './src/test/health.test';
import { runCollateralVaultsTests } from './src/test/collateralVaults.test';
import { runEVaultTests } from './src/test/evaults.test';
import { runChainlinkTests } from './src/test/chainlink.test';
import { runProtocolStatsTests } from './src/test/protocolStats.test';
import { runGovernanceTests } from './src/test/governance.test';

async function runTests() {
  const testSuite = process.argv[2]?.toLowerCase();

  console.log('🧪 Starting API endpoint tests...\n');
  console.log(`Testing against: ${BASE_URL}\n`);

  try {
    if (!testSuite || testSuite === 'all') {
      // Run all tests
      await runHealthTests();
      await runCollateralVaultsTests();
      await runEVaultTests();
      await runChainlinkTests();
      await runProtocolStatsTests();
      await runGovernanceTests();
    } else if (testSuite === 'health') {
      await runHealthTests();
    } else if (testSuite === 'collateral' || testSuite === 'collateralvaults') {
      await runCollateralVaultsTests();
    } else if (testSuite === 'evaults' || testSuite === 'evault') {
      await runEVaultTests();
    } else if (testSuite === 'chainlink') {
      await runChainlinkTests();
    } else if (testSuite === 'protocol' || testSuite === 'protocolstats') {
      await runProtocolStatsTests();
    } else if (testSuite === 'governance' || testSuite === 'gov') {
      await runGovernanceTests();
    } else {
      console.error(`Unknown test suite: ${testSuite}`);
      console.log('\nAvailable test suites:');
      console.log('  - all (or no argument)');
      console.log('  - health');
      console.log('  - collateral');
      console.log('  - evaults');
      console.log('  - chainlink');
      console.log('  - protocol');
      console.log('  - governance');
      process.exit(1);
    }

    printSummary();
    process.exit(getExitCode());
  } catch (error) {
    console.error('Fatal error:', error);
    process.exit(1);
  }
}

runTests();
