/**
 * Shared test utilities for API endpoint testing
 */

export const BASE_URL = 'http://localhost:8787';

export interface TestResult {
  endpoint: string;
  method: string;
  status: 'PASS' | 'FAIL';
  statusCode?: number;
  error?: string;
  duration?: number;
}

export const results: TestResult[] = [];

/**
 * Test an API endpoint
 * @param endpoint - The endpoint path to test
 * @param expectedStatus - Expected HTTP status code (default: 200)
 * @param description - Description of the test
 * @param actualExpectedStatus - The actual expected status for validation error cases
 */
export async function testEndpoint(
  endpoint: string,
  expectedStatus: number = 200,
  description: string = '',
  actualExpectedStatus?: number
): Promise<void> {
  const startTime = Date.now();
  const expected = actualExpectedStatus ?? expectedStatus;

  try {
    const response = await fetch(`${BASE_URL}${endpoint}`);
    const duration = Date.now() - startTime;

    if (response.status === expected) {
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
      console.error(`✗ ${description || endpoint} - Expected ${expected}, got ${response.status}`);
      console.error(`  Response: ${text.substring(0, 200)}`);
      results.push({
        endpoint,
        method: 'GET',
        status: 'FAIL',
        statusCode: response.status,
        error: `Expected ${expected}, got ${response.status}`,
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

/**
 * Print test summary
 */
export function printSummary(): void {
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
  } else {
    console.log('\n✅ All tests passed!');
  }
}

/**
 * Get test exit code (0 for success, 1 for failure)
 */
export function getExitCode(): number {
  const failed = results.filter(r => r.status === 'FAIL').length;
  return failed > 0 ? 1 : 0;
}

/**
 * Clear test results
 */
export function clearResults(): void {
  results.length = 0;
}
