import { eq, desc, sql, count, and, gte, lte } from "drizzle-orm";
import { 
  vaultCreated, 
  vaultMetrics,
  preLiquidationState,
  factorySetCollateralVaultLiquidated,
} from "./db/schema/Listener";
import { types, db, App, middlewares } from "@duneanalytics/sim-idx";

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
app.get("/api/vault/:address/metrics", async (c) => {
  try {
    const client = db.client(c);
    const vaultAddress = c.req.param("address");
    const limit = Math.min(parseInt(c.req.query("limit") || "100"), 1000);
    const offset = parseInt(c.req.query("offset") || "0");
    const startBlock = c.req.query("startBlock");
    const endBlock = c.req.query("endBlock");
    const startTime = c.req.query("startTime");
    const endTime = c.req.query("endTime");

    if (!vaultAddress) {
      return Response.json({ error: "Vault address is required" }, { status: 400 });
    }

    // Build query conditions
    const conditions = [eq(vaultMetrics.vaultAddress, vaultAddress as any)];

    if (startBlock) {
      conditions.push(gte(vaultMetrics.blockNumber, BigInt(startBlock) as any));
    }
    if (endBlock) {
      conditions.push(lte(vaultMetrics.blockNumber, BigInt(endBlock) as any));
    }
    if (startTime) {
      conditions.push(gte(vaultMetrics.blockTimestamp, BigInt(startTime) as any));
    }
    if (endTime) {
      conditions.push(lte(vaultMetrics.blockTimestamp, BigInt(endTime) as any));
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
      vaultAddress,
      metrics: result,
      count: result.length,
      totalCount: totalCount[0].count,
      limit,
      offset
    });
  } catch (e) {
    console.error("Vault metrics query failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

// Get latest metrics for all tracked vaults
app.get("/api/vaults/metrics/latest", async (c) => {
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

// Get pre-liquidation states for a specific collateral vault
app.get("/api/vault/:address/pre-liquidation", async (c) => {
  try {
    const client = db.client(c);
    const vaultAddress = c.req.param("address");
    const limit = Math.min(parseInt(c.req.query("limit") || "50"), 100);
    const offset = parseInt(c.req.query("offset") || "0");

    if (!vaultAddress) {
      return Response.json({ error: "Vault address is required" }, { status: 400 });
    }

    const result = await client
      .select()
      .from(preLiquidationState)
      .where(eq(preLiquidationState.collateralVault, vaultAddress as any))
      .orderBy(desc(preLiquidationState.blockTimestamp))
      .limit(limit)
      .offset(offset);

    const totalCount = await client
      .select({ count: count() })
      .from(preLiquidationState)
      .where(eq(preLiquidationState.collateralVault, vaultAddress as any));

    return Response.json({
      vaultAddress,
      preLiquidationStates: result,
      count: result.length,
      totalCount: totalCount[0].count,
      limit,
      offset
    });
  } catch (e) {
    console.error("Pre-liquidation state query failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

// Get liquidation events with their corresponding pre-liquidation states
app.get("/api/liquidations/with-pre-state", async (c) => {
  try {
    const client = db.client(c);
    const limit = Math.min(parseInt(c.req.query("limit") || "20"), 100);
    const offset = parseInt(c.req.query("offset") || "0");
    const vaultAddress = c.req.query("vaultAddress");

    // Build base conditions
    const conditions = [];
    if (vaultAddress) {
      conditions.push(eq(factorySetCollateralVaultLiquidated.collateralVault, vaultAddress as any));
    }

    // Query liquidation events with their pre-states using a left join
    const result = await client
      .select({
        // Liquidation event data
        liquidationTxnHash: factorySetCollateralVaultLiquidated.txnHash,
        liquidationBlockNumber: factorySetCollateralVaultLiquidated.blockNumber,
        liquidationBlockTimestamp: factorySetCollateralVaultLiquidated.blockTimestamp,
        factoryAddress: factorySetCollateralVaultLiquidated.factoryAddress,
        collateralVault: factorySetCollateralVaultLiquidated.collateralVault,
        liquidatorAddress: factorySetCollateralVaultLiquidated.liquidatorAddress,
        postLiquidationCreditReserved: factorySetCollateralVaultLiquidated.creditReserved,
        postLiquidationDebt: factorySetCollateralVaultLiquidated.debt,
        postLiquidationTotalCollateral: factorySetCollateralVaultLiquidated.totalCollateral,
        postLiquidationUserOwnedCollateral: factorySetCollateralVaultLiquidated.userOwnedCollateral,
        postLiquidationTwyneLiqLtv: factorySetCollateralVaultLiquidated.twyneLiqLtv,
        
        // Pre-liquidation state data
        preLiquidationTxnHash: preLiquidationState.txnHash,
        preLiquidationBlockNumber: preLiquidationState.blockNumber,
        preLiquidationBlockTimestamp: preLiquidationState.blockTimestamp,
        preMaxRelease: preLiquidationState.preMaxRelease,
        preMaxRepay: preLiquidationState.preMaxRepay,
        preTotalAssetsDepositedOrReserved: preLiquidationState.preTotalAssetsDepositedOrReserved,
        preUserOwnedCollateral: preLiquidationState.preUserOwnedCollateral,
        preTwyneLiqLtv: preLiquidationState.preTwyneLiqLtv,
      })
      .from(factorySetCollateralVaultLiquidated)
      .leftJoin(
        preLiquidationState,
        and(
          eq(factorySetCollateralVaultLiquidated.collateralVault, preLiquidationState.collateralVault),
          eq(factorySetCollateralVaultLiquidated.txnHash, preLiquidationState.txnHash)
        )
      )
      .where(conditions.length > 0 ? and(...conditions) : undefined)
      .orderBy(desc(factorySetCollateralVaultLiquidated.blockTimestamp))
      .limit(limit)
      .offset(offset);

    const totalCount = await client
      .select({ count: count() })
      .from(factorySetCollateralVaultLiquidated)
      .where(conditions.length > 0 ? and(...conditions) : undefined);

    return Response.json({
      liquidationsWithPreState: result,
      count: result.length,
      totalCount: totalCount[0].count,
      limit,
      offset
    });
  } catch (e) {
    console.error("Liquidations with pre-state query failed:", e);
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
    const preLiquidationQuery = await client.select({ count: count() }).from(preLiquidationState);
    
    return Response.json({ 
      status: "healthy", 
      timestamp: new Date().toISOString(),
      totalVaults: testQuery[0].count,
      totalMetricsRecords: metricsQuery[0].count,
      totalPreLiquidationRecords: preLiquidationQuery[0].count
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