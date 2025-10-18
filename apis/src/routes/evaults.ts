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

      return Response.json({
        vaultAddress: vaultAddressParam,
        metrics: result,
        count: result.length,
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
      const latestMetrics = result.rows;

      const countResult = await client.execute(countQuery);
      const totalUniqueVaults = Number(countResult.rows[0]?.count || 0);

      return Response.json({
        latestMetrics,
        count: latestMetrics.length,
        totalUniqueVaults,
        limit,
        offset,
        ...(targetBlock && { blockNumber: targetBlock.toString() }),
        ...(targetTimestamp && { timestamp: targetTimestamp.toString() }),
        responseTimestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "Latest metrics query failed");
    }
  });
}
