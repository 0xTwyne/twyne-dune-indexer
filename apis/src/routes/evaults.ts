import { App, db, types } from "@duneanalytics/sim-idx";
import { eq, desc, sql, count, and, gte, lte } from "drizzle-orm";
import { vaultMetrics } from "../db/schema/Listener";
import { parseChainIds } from "../utils/chainIds";
import { validateAddress, validatePagination, validateBlockNumber, validateTimestamp } from "../utils/validation";
import { errorResponse, serverError } from "../utils/errors";

const Uint = types.Uint;

export function registerEVaultRoutes(app: ReturnType<typeof App.create>) {
  // Get historical vault metrics for a specific vault address
  app.get("/api/evault/:address/metrics", async (c) => {
    try {
      const client = db.client(c);
      const vaultAddressParam = c.req.param("address");

      const limit = Math.min(parseInt(c.req.query("limit") || "100"), 1000);
      const offset = parseInt(c.req.query("offset") || "0");
      const startBlock = c.req.query("startBlock");
      const endBlock = c.req.query("endBlock");
      const startTime = c.req.query("startTime");
      const endTime = c.req.query("endTime");

      // Validate vault address parameter
      const addressValidation = validateAddress(vaultAddressParam);
      if (!addressValidation.success) {
        return errorResponse(addressValidation.error!);
      }
      const vaultAddress = addressValidation.value!;

      // Build query conditions with proper types
      const conditions = [eq(vaultMetrics.vaultAddress, vaultAddress)];

      if (startBlock) {
        conditions.push(gte(vaultMetrics.blockNumber, new Uint(BigInt(startBlock))));
      }
      if (endBlock) {
        conditions.push(lte(vaultMetrics.blockNumber, new Uint(BigInt(endBlock))));
      }
      if (startTime) {
        conditions.push(gte(vaultMetrics.blockTimestamp, new Uint(BigInt(startTime))));
      }
      if (endTime) {
        conditions.push(lte(vaultMetrics.blockTimestamp, new Uint(BigInt(endTime))));
      }

      const result = await client
        .select()
        .from(vaultMetrics)
        .where(and(...conditions))
        .orderBy(desc(vaultMetrics.blockNumber))
        .limit(limit)
        .offset(offset);

      const totalCount = await client
        .select({ count: count() })
        .from(vaultMetrics)
        .where(and(...conditions));

      // Format metrics with scaled values
      const formattedMetrics = result.map((metric: any) => {
        const decimals = Number(metric.decimals?.value || metric.decimals || 18);
        const tokenScaleFactor = Math.pow(10, decimals);
        const usdScaleFactor = 1e18; // USD values stored with 18 decimals
        const rateScaleFactor = 1e18; // Interest rate and accumulator use 18 decimals

        return {
          chain_id: Number(metric.chainId?.value || metric.chainId),
          vault_address: '0x' + Buffer.from(metric.vaultAddress?.address || metric.vaultAddress).toString('hex'),
          total_assets: Number(metric.totalAssets?.value || metric.totalAssets) / tokenScaleFactor,
          total_assets_usd: Number(metric.totalAssetsUsd?.value || metric.totalAssetsUsd) / usdScaleFactor,
          total_borrows: Number(metric.totalBorrows?.value || metric.totalBorrows) / tokenScaleFactor,
          total_borrows_usd: Number(metric.totalBorrowsUsd?.value || metric.totalBorrowsUsd) / usdScaleFactor,
          asset: '0x' + Buffer.from(metric.asset?.address || metric.asset).toString('hex'),
          cash: Number(metric.cash?.value || metric.cash) / tokenScaleFactor,
          interest_accumulator: Number(metric.interestAccumulator?.value || metric.interestAccumulator) / rateScaleFactor,
          interest_rate: Number(metric.interestRate?.value || metric.interestRate) / rateScaleFactor,
          symbol: metric.symbol,
          name: metric.name,
          decimals,
          block_number: Number(metric.blockNumber?.value || metric.blockNumber),
          block_timestamp: Number(metric.blockTimestamp?.value || metric.blockTimestamp)
        };
      });

      return Response.json({
        vaultAddress: vaultAddressParam,
        metrics: formattedMetrics,
        count: formattedMetrics.length,
        totalCount: totalCount[0].count,
        limit,
        offset
      });
    } catch (e) {
      return serverError(e as Error, "Vault metrics query failed");
    }
  });

  // Get latest metrics for all tracked vaults (or at specific block/timestamp)
  app.get("/api/evaults/latest", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      // Validate pagination
      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      // Parse optional blockNumber and timestamp parameters
      const blockNumberParam = c.req.query("blockNumber");
      const timestampParam = c.req.query("timestamp");

      let targetBlock: types.Uint | null = null;
      let targetTimestamp: types.Uint | null = null;

      // Validate and prioritize blockNumber over timestamp
      if (blockNumberParam) {
        const blockValidation = validateBlockNumber(blockNumberParam);
        if (!blockValidation.success) {
          return errorResponse(blockValidation.error!);
        }
        targetBlock = blockValidation.value!;
      } else if (timestampParam) {
        const timestampValidation = validateTimestamp(timestampParam);
        if (!timestampValidation.success) {
          return errorResponse(timestampValidation.error!);
        }
        targetTimestamp = timestampValidation.value!;
      }

      // Convert chainIds to array of numeric string values for SQL
      const chainIdStrings = chainIds.map(id => id.value.toString());

      let mainQuery;
      let countQuery;

      if (targetBlock) {
        // Get latest metrics for each vault up to the specified block
        mainQuery = sql.raw(`
          SELECT vm.*
          FROM vault_metrics vm
          WHERE (vm.vault_address, vm.block_number) IN (
            SELECT vault_address, MAX(block_number) as max_block_number
            FROM vault_metrics
            WHERE block_number <= ${targetBlock.value.toString()}
              AND chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
            GROUP BY vault_address
          )
            AND vm.block_number <= ${targetBlock.value.toString()}
            AND vm.chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
          ORDER BY vm.block_timestamp DESC
          LIMIT ${limit}
          OFFSET ${offset}
        `);

        countQuery = sql.raw(`
          SELECT COUNT(DISTINCT vault_address) as count
          FROM vault_metrics
          WHERE block_number <= ${targetBlock.value.toString()}
            AND chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
        `);
      } else if (targetTimestamp) {
        // Get latest metrics for each vault up to the specified timestamp
        mainQuery = sql.raw(`
          SELECT vm.*
          FROM vault_metrics vm
          WHERE (vm.vault_address, vm.block_number) IN (
            SELECT vault_address, MAX(block_number) as max_block_number
            FROM vault_metrics
            WHERE block_timestamp <= ${targetTimestamp.value.toString()}
              AND chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
            GROUP BY vault_address
          )
            AND vm.block_timestamp <= ${targetTimestamp.value.toString()}
            AND vm.chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
          ORDER BY vm.block_timestamp DESC
          LIMIT ${limit}
          OFFSET ${offset}
        `);

        countQuery = sql.raw(`
          SELECT COUNT(DISTINCT vault_address) as count
          FROM vault_metrics
          WHERE block_timestamp <= ${targetTimestamp.value.toString()}
            AND chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
        `);
      } else {
        // Get the latest metrics for each vault (current behavior)
        mainQuery = sql.raw(`
          SELECT vm.*
          FROM vault_metrics vm
          WHERE (vm.vault_address, vm.block_number) IN (
            SELECT vault_address, MAX(block_number) as max_block_number
            FROM vault_metrics
            WHERE chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
            GROUP BY vault_address
          )
            AND vm.chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
          ORDER BY vm.block_timestamp DESC
          LIMIT ${limit}
          OFFSET ${offset}
        `);

        countQuery = sql.raw(`
          SELECT COUNT(DISTINCT vault_address) as count
          FROM vault_metrics
          WHERE chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
        `);
      }

      const result = await client.execute(mainQuery);
      const rawMetrics = result.rows;

      const countResult = await client.execute(countQuery);
      const totalUniqueVaults = Number(countResult.rows[0]?.count || 0);

      // Format the metrics to convert Buffer addresses to hex strings and scale values
      const latestMetrics = rawMetrics.map((metric: any) => {
        // Get decimals for scaling
        const decimals = Number(metric.decimals || 18);
        const tokenScaleFactor = Math.pow(10, decimals);
        const usdScaleFactor = 1e18; // USD values stored with 18 decimals
        const rateScaleFactor = 1e18; // Interest rate and accumulator use 18 decimals

        // Convert vault_address from Buffer to hex string
        let vaultAddress = '';
        if (metric.vault_address && Buffer.isBuffer(metric.vault_address)) {
          vaultAddress = '0x' + metric.vault_address.toString('hex');
        } else if (metric.vault_address?.type === 'Buffer' && metric.vault_address?.data) {
          vaultAddress = '0x' + Buffer.from(metric.vault_address.data).toString('hex');
        }

        // Convert asset address from Buffer to hex string
        let assetAddress = '';
        if (metric.asset && Buffer.isBuffer(metric.asset)) {
          assetAddress = '0x' + metric.asset.toString('hex');
        } else if (metric.asset?.type === 'Buffer' && metric.asset?.data) {
          assetAddress = '0x' + Buffer.from(metric.asset.data).toString('hex');
        }

        return {
          chain_id: Number(metric.chain_id),
          vault_address: vaultAddress,
          total_assets: Number(metric.total_assets || 0) / tokenScaleFactor,
          total_assets_usd: Number(metric.total_assets_usd || 0) / usdScaleFactor,
          total_borrows: Number(metric.total_borrows || 0) / tokenScaleFactor,
          total_borrows_usd: Number(metric.total_borrows_usd || 0) / usdScaleFactor,
          asset: assetAddress,
          cash: metric.cash !== undefined ? Number(metric.cash) / tokenScaleFactor : undefined,
          interest_accumulator: metric.interest_accumulator !== undefined ? Number(metric.interest_accumulator) / rateScaleFactor : undefined,
          interest_rate: Number(metric.interest_rate || 0) / rateScaleFactor,
          symbol: metric.symbol,
          name: metric.name,
          decimals,
          block_number: Number(metric.block_number),
          block_timestamp: Number(metric.block_timestamp)
        };
      });

      return Response.json({
        latestMetrics,
        count: latestMetrics.length,
        totalUniqueVaults,
        limit,
        offset,
        ...(targetBlock && { blockNumber: Number(targetBlock.value) }),
        ...(targetTimestamp && { timestamp: Number(targetTimestamp.value) }),
        responseTimestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "Latest metrics query failed");
    }
  });
}
