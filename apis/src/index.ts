import { eq, desc, sql, count, and, gte, lte } from "drizzle-orm";
import { 
  vaultCreated, 
  vaultMetrics,
  factorySetCollateralVaultLiquidated,
} from "./db/schema/Listener";
import { types, db, App, middlewares } from "@duneanalytics/sim-idx";

const Address = types.Address;
const Uint = types.Uint;

const app = App.create();
app.use("*", middlewares.authentication);

// Get all created vaults with pagination
app.get("/api/collateralVaults", async (c) => {
  try {
    const client = db.client(c);
    const limit = Math.min(parseInt(c.req.query("limit") || "50"), 100);
    const offset = parseInt(c.req.query("offset") || "0");
    
    const result = await client
      .select()
      .from(vaultCreated)
      .orderBy(desc(vaultCreated.blockTimestamp))
      .limit(limit)
      .offset(offset);
    console.log(result);

    const totalCount = await client
      .select({ count: count() })
      .from(vaultCreated);

    return Response.json({
      vaults: result,
      count: result.length,
      totalCount: totalCount[0].count,
      limit,
      offset
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

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
    if (!vaultAddressParam) {
      return Response.json({ error: "Vault address is required" }, { status: 400 });
    }

    // Remove '0x' prefix if present and validate hex format
    const cleanAddress = vaultAddressParam.startsWith('0x') 
      ? vaultAddressParam.slice(2) 
      : vaultAddressParam;

    // Check if it's a valid hex string (only contains 0-9, a-f, A-F)
    if (!/^[0-9a-fA-F]+$/.test(cleanAddress)) {
      return Response.json(
        { error: "Vault address must be a valid hex string" },
        { status: 400 }
      );
    }

    // Check if it's exactly 40 characters (20 bytes when converted)
    if (cleanAddress.length !== 40) {
      return Response.json(
        { error: "Vault address must be exactly 20 bytes (40 hex characters)" },
        { status: 400 }
      );
    }

    // Convert to proper Address type
    const vaultAddress = Address.from(cleanAddress);

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
    console.error("Vault metrics query failed:", e);
    console.error("Cause:", (e as Error).cause);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

// Get latest metrics for all tracked vaults
app.get("/api/evaults/latest", async (c) => {
  try {
    const client = db.client(c);

    // Get the latest metrics for each vault
    const latestMetrics = await client
      .select()
      .from(vaultMetrics)
      .where(
        sql`(vault_address, block_number) IN (
          SELECT vault_address, MAX(block_number)
          FROM ${vaultMetrics}
          GROUP BY vault_address
        )`
      )
      .orderBy(desc(vaultMetrics.blockTimestamp));

    return Response.json({
      latestMetrics,
      count: latestMetrics.length,
      timestamp: new Date().toISOString()
    });
  } catch (e) {
    console.error("Latest metrics query failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

// Health check endpoint
app.get("/api/health", async (c) => {
  try {
    const client = db.client(c);
    
    // Test database connection
    const testQuery = await client.select({ count: count() }).from(vaultCreated);
    const metricsQuery = await client.select({ count: count() }).from(vaultMetrics);
    
    return Response.json({ 
      status: "healthy", 
      timestamp: new Date().toISOString(),
      totalVaults: testQuery[0].count,
      totalMetricsRecords: metricsQuery[0].count,
    });
  } catch (e) {
    console.error("Health check failed:", e);
    return Response.json({ 
      status: "unhealthy", 
      error: (e as Error).message,
      timestamp: new Date().toISOString()
    }, { status: 500 });
  }
});

export default app;