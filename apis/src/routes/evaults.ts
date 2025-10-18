import { App, db, types } from "@duneanalytics/sim-idx";
import { eq, desc, sql, count, and, gte, lte, inArray } from "drizzle-orm";
import { vaultMetrics } from "../db/schema/Listener";
import { parseChainIds } from "../utils/chainIds";
import { validateAddress } from "../utils/validation";
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

  // Get latest metrics for all tracked vaults
  app.get("/api/evaults/latest", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      // Get the latest metrics for each vault
      const latestMetrics = await client
        .select()
        .from(vaultMetrics)
        .where(
          and(
            sql`(vault_address, block_number) IN (
              SELECT vault_address, MAX(block_number)
              FROM ${vaultMetrics}
              GROUP BY vault_address
            )`,
            inArray(vaultMetrics.chainId, chainIds)
          )
        )
        .orderBy(desc(vaultMetrics.blockTimestamp));

      return Response.json({
        latestMetrics,
        count: latestMetrics.length,
        timestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "Latest metrics query failed");
    }
  });
}
