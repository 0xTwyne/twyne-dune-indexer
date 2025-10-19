import { App, db } from "@duneanalytics/sim-idx";
import { sql, and, inArray } from "drizzle-orm";
import { vaultMetrics } from "../db/schema/Listener";
import { parseChainIds } from "../utils/chainIds";
import { serverError } from "../utils/errors";

export function registerProtocolStatsRoutes(app: ReturnType<typeof App.create>) {
  // Get protocol statistics (total collateral and debt from latest snapshots)
  app.get("/api/protocolStats", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      // Convert chainIds to array of numeric string values for SQL
      const chainIdStrings = chainIds.map(id => id.value.toString());

      // Calculate protocol stats with current prices from vaultMetrics using raw SQL
      const statsQuery = sql.raw(`
        WITH latest_vault_metrics AS (
          SELECT
            vault_address,
            total_assets,
            total_assets_usd,
            total_borrows,
            total_borrows_usd,
            symbol,
            CASE
              WHEN total_assets > 0 THEN total_assets_usd::numeric / total_assets::numeric
              ELSE 0
            END as price_per_token
          FROM vault_metrics
          WHERE (vault_address, block_number) IN (
            SELECT vault_address, MAX(block_number) as max_block_number
            FROM vault_metrics
            GROUP BY vault_address
          )
            AND chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
        ),
        latest_snapshots AS (
          SELECT
            ps.vault_address,
            ps.credit_vault,
            ps.debt_vault,
            ps.user_owned_collateral,
            ps.max_repay
          FROM position_snapshot ps
          WHERE (ps.vault_address, ps.block_timestamp) IN (
            SELECT vault_address, MAX(block_timestamp) as max_timestamp
            FROM position_snapshot
            WHERE state = 'post'
            GROUP BY vault_address
          )
            AND ps.state = 'post'
            AND ps.chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
        )
        SELECT
          COALESCE(SUM(
            ls.user_owned_collateral::numeric * COALESCE(credit_metrics.price_per_token, 0)
          ), 0) as total_collateral_usd,
          COALESCE(SUM(
            ls.max_repay::numeric * COALESCE(debt_metrics.price_per_token, 0)
          ), 0) as total_debt_usd,
          COUNT(DISTINCT ls.vault_address) as unique_vaults
        FROM latest_snapshots ls
        LEFT JOIN latest_vault_metrics credit_metrics
          ON ls.credit_vault = credit_metrics.vault_address
        LEFT JOIN latest_vault_metrics debt_metrics
          ON ls.debt_vault = debt_metrics.vault_address
      `);

      const statsResult = await client.execute(statsQuery);
      const collateralStats = statsResult.rows[0];

      // Get the latest EVault metrics for vaults with symbols starting with "ee" (case sensitive)
      const evaultSubquery = sql`
        SELECT vault_address, MAX(block_number) as max_block_number
        FROM ${vaultMetrics}
        GROUP BY vault_address
      `;

      const evaultStatsResult = await client
        .select({
          totalEvaultAssetsUsd: sql<string>`COALESCE(SUM(${vaultMetrics.totalAssetsUsd}), 0)`,
          totalEvaultBorrowsUsd: sql<string>`COALESCE(SUM(${vaultMetrics.totalBorrowsUsd}), 0)`
        })
        .from(vaultMetrics)
        .where(
          and(
            sql`(vault_address, block_number) IN (${evaultSubquery})`,
            inArray(vaultMetrics.chainId, chainIds),
            sql`${vaultMetrics.symbol} LIKE 'ee%'`
          )
        );

      const evaultStats = evaultStatsResult[0];

      // Convert string values to numbers and scale by 1e18 (except uniqueVaults)
      const scaleFactor = 1e18;

      return Response.json({
        totalCollateralUsd: Number(collateralStats.total_collateral_usd) / scaleFactor,
        totalDebtUsd: Number(collateralStats.total_debt_usd) / scaleFactor,
        totalEvaultAssetsUsd: Number(evaultStats.totalEvaultAssetsUsd) / scaleFactor,
        totalEvaultBorrowsUsd: Number(evaultStats.totalEvaultBorrowsUsd) / scaleFactor,
        uniqueVaults: Number(collateralStats.unique_vaults),
        timestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "Failed to fetch protocol statistics");
    }
  });
}
