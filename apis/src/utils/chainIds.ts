import { types } from "@duneanalytics/sim-idx";

/**
 * Supported chain IDs for the indexer
 * Currently: Ethereum (1) and Base (8453)
 */
export const supportedChains: types.Uint[] = [
  1, 8453
].map((id) => new types.Uint(BigInt(id)));

/**
 * Parse chain IDs from query parameter string
 * @param chainIdsParam - Comma-separated chain IDs (e.g., "1,8453")
 * @returns Array of Uint chain IDs, defaults to supportedChains if not provided
 */
export function parseChainIds(chainIdsParam?: string): types.Uint[] {
  if (!chainIdsParam) {
    return supportedChains;
  }

  return chainIdsParam
    .split(",")
    .map((id) => new types.Uint(BigInt(parseInt(id, 10))));
}
