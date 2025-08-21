import { eq, desc, sql, count, and, gte, lte } from "drizzle-orm";
import { 
  vaultCreated, 
  vaultMetrics,
  positionSnapshot,
  factorySetCollateralVaultLiquidated,
  answerUpdated,
  externalLiquidation,
  preExternalLiquidation
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

// Get latest position snapshot for each vault address
app.get("/api/collateralVaults/latest-snapshots", async (c) => {
  try {
    const client = db.client(c);
    
    // Validate and sanitize query parameters
    const limitParam = c.req.query("limit") || "50";
    const offsetParam = c.req.query("offset") || "0";
    const canLiquidateFilter = c.req.query("canLiquidate");
    const isExternallyLiquidatedFilter = c.req.query("isExternallyLiquidated");
    
    // Validate limit parameter
    const parsedLimit = parseInt(limitParam);
    if (isNaN(parsedLimit) || parsedLimit < 1) {
      return Response.json({ error: "Invalid limit parameter. Must be a positive integer." }, { status: 400 });
    }
    const limit = Math.min(parsedLimit, 100);
    
    // Validate offset parameter
    const parsedOffset = parseInt(offsetParam);
    if (isNaN(parsedOffset) || parsedOffset < 0) {
      return Response.json({ error: "Invalid offset parameter. Must be a non-negative integer." }, { status: 400 });
    }
    const offset = parsedOffset;
    
    // Build additional filter conditions
    const additionalConditions = [];
    
    if (canLiquidateFilter !== undefined) {
      const canLiquidateValue = canLiquidateFilter.toLowerCase() === 'true';
      additionalConditions.push(sql`can_liquidate = ${canLiquidateValue}`);
    }
    
    if (isExternallyLiquidatedFilter !== undefined) {
      const isExternallyLiquidatedValue = isExternallyLiquidatedFilter.toLowerCase() === 'true';
      additionalConditions.push(sql`is_externally_liquidated = ${isExternallyLiquidatedValue}`);
    }
    
    // Build the base subquery for latest snapshots
    let baseSubquery = sql`
      SELECT vault_address, MAX(block_timestamp) as max_timestamp
      FROM ${positionSnapshot}
    `;
    
    // Add filters to subquery if needed
    if (additionalConditions.length > 0) {
      baseSubquery = sql`${baseSubquery} WHERE ${sql.join(additionalConditions, sql` AND `)}`;
    }
    
    baseSubquery = sql`${baseSubquery} GROUP BY vault_address`;
    
    // Get the latest position snapshot for each vault address
    const latestSnapshots = await client
      .select()
      .from(positionSnapshot)
      .where(
        sql`(vault_address, block_timestamp) IN (${baseSubquery})`
      )
      .orderBy(desc(positionSnapshot.blockTimestamp))
      .limit(limit)
      .offset(offset);

    // Get total count of unique vault addresses with snapshots (applying same filters)
    let countQuery = sql`SELECT COUNT(DISTINCT vault_address) as count FROM ${positionSnapshot}`;
    if (additionalConditions.length > 0) {
      countQuery = sql`${countQuery} WHERE ${sql.join(additionalConditions, sql` AND `)}`;
    }
    
    const totalUniqueVaultsResult = await client.execute(countQuery);
    const totalUniqueVaults = Number(totalUniqueVaultsResult.rows[0]?.count || 0);

    return Response.json({
      latestSnapshots,
      count: latestSnapshots.length,
      totalUniqueVaults,
      limit,
      offset,
      filters: {
        canLiquidate: canLiquidateFilter,
        isExternallyLiquidated: isExternallyLiquidatedFilter
      },
      timestamp: new Date().toISOString()
    });
  } catch (e) {
    console.error("Latest snapshots query failed:", e);
    console.error("Cause:", (e as Error).cause);
    return Response.json({ 
      error: "Failed to fetch latest position snapshots",
      details: (e as Error).message 
    }, { status: 500 });
  }
});

// Get latest position snapshot for a specific vault address
app.get("/api/collateralVaults/:address/latest-snapshot", async (c) => {
  try {
    const client = db.client(c);
    const vaultAddressParam = c.req.param("address");

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

    // Get the latest snapshot for this specific vault
    const latestSnapshot = await client
      .select()
      .from(positionSnapshot)
      .where(eq(positionSnapshot.vaultAddress, vaultAddress))
      .orderBy(desc(positionSnapshot.blockTimestamp))
      .limit(1);

    if (latestSnapshot.length === 0) {
      return Response.json(
        { error: "No position snapshots found for this vault address" },
        { status: 404 }
      );
    }

    return Response.json({
      vaultAddress: vaultAddressParam,
      latestSnapshot: latestSnapshot[0],
      timestamp: new Date().toISOString()
    });
  } catch (e) {
    console.error("Latest snapshot query failed:", e);
    console.error("Cause:", (e as Error).cause);
    return Response.json({ 
      error: "Failed to fetch latest position snapshot",
      details: (e as Error).message 
    }, { status: 500 });
  }
});

app.get("/api/collateralVaults/:address/history", async (c) => {
  try {
    const client = db.client(c);
    const vaultAddressParam = c.req.param("address");

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

    // Validate and sanitize pagination query parameters
    const limitParam = c.req.query("limit") || "50";
    const offsetParam = c.req.query("offset") || "0";
    
    // Validate limit parameter
    const parsedLimit = parseInt(limitParam);
    if (isNaN(parsedLimit) || parsedLimit < 1) {
      return Response.json({ error: "Invalid limit parameter. Must be a positive integer." }, { status: 400 });
    }
    const limit = Math.min(parsedLimit, 100);
    
    // Validate offset parameter
    const parsedOffset = parseInt(offsetParam);
    if (isNaN(parsedOffset) || parsedOffset < 0) {
      return Response.json({ error: "Invalid offset parameter. Must be a non-negative integer." }, { status: 400 });
    }
    const offset = parsedOffset;

    // Get all position snapshots for this specific vault with pagination
    const snapshots = await client
      .select()
      .from(positionSnapshot)
      .where(eq(positionSnapshot.vaultAddress, vaultAddress))
      .orderBy(desc(positionSnapshot.blockTimestamp))
      .limit(limit)
      .offset(offset);

    // Get total count of snapshots for this vault
    const totalCountResult = await client
      .select({ count: count() })
      .from(positionSnapshot)
      .where(eq(positionSnapshot.vaultAddress, vaultAddress));

    const totalCount = totalCountResult[0].count;

    if (snapshots.length === 0 && offset === 0) {
      return Response.json(
        { error: "No position snapshots found for this vault address" },
        { status: 404 }
      );
    }

    return Response.json({
      vaultAddress: vaultAddressParam,
      snapshots,
      count: snapshots.length,
      totalCount,
      limit,
      offset,
      timestamp: new Date().toISOString()
    });
  } catch (e) {
    console.error("History snapshots query failed:", e);
    console.error("Cause:", (e as Error).cause);
    return Response.json({ 
      error: "Failed to fetch position snapshot history",
      details: (e as Error).message 
    }, { status: 500 });
  }
});


// Get external liquidations for collateral vaults
app.get("/api/collateralVaults/external-liquidations", async (c) => {
  try {
    const client = db.client(c);
    
    // Validate and sanitize pagination query parameters
    const limitParam = c.req.query("limit") || "50";
    const offsetParam = c.req.query("offset") || "0";
    
    // Validate limit parameter
    const parsedLimit = parseInt(limitParam);
    if (isNaN(parsedLimit) || parsedLimit < 1) {
      return Response.json({ error: "Invalid limit parameter. Must be a positive integer." }, { status: 400 });
    }
    const limit = Math.min(parsedLimit, 100);
    
    // Validate offset parameter
    const parsedOffset = parseInt(offsetParam);
    if (isNaN(parsedOffset) || parsedOffset < 0) {
      return Response.json({ error: "Invalid offset parameter. Must be a non-negative integer." }, { status: 400 });
    }
    const offset = parsedOffset;

    // Join vaultCreated.vaultAddress with externalLiquidation.violator
    // Then join with preExternalLiquidation on txnHash
    // Return all columns from the externalLiquidation table plus specified preExternalLiquidation columns
    const liquidations = await client
      .select({
        vaultAddress: externalLiquidation.vaultAddress,
        blockNumber: externalLiquidation.blockNumber,
        blockTimestamp: externalLiquidation.blockTimestamp,
        txnHash: externalLiquidation.txnHash,
        liquidator: externalLiquidation.liquidator,
        violator: externalLiquidation.violator,
        collateral: externalLiquidation.collateral,
        repayAssets: externalLiquidation.repayAssets,
        yieldBalance: externalLiquidation.yieldBalance,
        repayAssetsUsd: externalLiquidation.repayAssetsUsd,
        yieldBalanceUsd: externalLiquidation.yieldBalanceUsd,
        collateralAmount: externalLiquidation.collateralAmount,
        debtAmount: externalLiquidation.debtAmount,
        collateralAmountUsd: externalLiquidation.collateralAmountUsd,
        debtAmountUsd: externalLiquidation.debtAmountUsd,
        liqLtv: externalLiquidation.liqLtv,
        preCollateralAmount: preExternalLiquidation.collateralAmount,
        preCollateralAmountUsd: preExternalLiquidation.collateralAmountUsd,
        preDebtAmount: preExternalLiquidation.debtAmount,
        preDebtAmountUsd: preExternalLiquidation.debtAmountUsd,
      })
      .from(externalLiquidation)
      .innerJoin(vaultCreated, eq(externalLiquidation.violator, vaultCreated.vaultAddress))
      .innerJoin(preExternalLiquidation, eq(externalLiquidation.txnHash, preExternalLiquidation.txnHash))
      .orderBy(desc(externalLiquidation.blockTimestamp))
      .limit(limit)
      .offset(offset);

    // Get total count of external liquidations for collateral vaults with preExternalLiquidation join
    const totalCountResult = await client
      .select({ count: count() })
      .from(externalLiquidation)
      .innerJoin(vaultCreated, eq(externalLiquidation.violator, vaultCreated.vaultAddress))
      .innerJoin(preExternalLiquidation, eq(externalLiquidation.txnHash, preExternalLiquidation.txnHash));

    const totalCount = totalCountResult[0].count;

    return Response.json({
      externalLiquidations: liquidations,
      count: liquidations.length,
      totalCount,
      limit,
      offset,
      timestamp: new Date().toISOString()
    });

  } catch (e) {
    console.error("External liquidations query failed:", e);
    console.error("Cause:", (e as Error).cause);
    return Response.json({ 
      error: "Failed to fetch external liquidations",
      details: (e as Error).message 
    }, { status: 500 });
  }
});

// Get internal liquidations (factory set collateral vault liquidated events)
app.get("/api/collateralVaults/internal-liquidations", async (c) => {
  try {
    const client = db.client(c);
    
    // Validate and sanitize pagination query parameters
    const limitParam = c.req.query("limit") || "50";
    const offsetParam = c.req.query("offset") || "0";
    
    // Validate limit parameter
    const parsedLimit = parseInt(limitParam);
    if (isNaN(parsedLimit) || parsedLimit < 1) {
      return Response.json({ error: "Invalid limit parameter. Must be a positive integer." }, { status: 400 });
    }
    const limit = Math.min(parsedLimit, 100);
    
    // Validate offset parameter
    const parsedOffset = parseInt(offsetParam);
    if (isNaN(parsedOffset) || parsedOffset < 0) {
      return Response.json({ error: "Invalid offset parameter. Must be a non-negative integer." }, { status: 400 });
    }
    const offset = parsedOffset;

    // Get filter parameters
    const startBlock = c.req.query("startBlock");
    const endBlock = c.req.query("endBlock");
    const startTimestamp = c.req.query("startTimestamp");
    const endTimestamp = c.req.query("endTimestamp");

    // Build query conditions
    const conditions = [];

    if (startBlock) {
      try {
        conditions.push(gte(factorySetCollateralVaultLiquidated.blockNumber, new Uint(BigInt(startBlock))));
      } catch (e) {
        return Response.json({ error: "Invalid startBlock parameter. Must be a valid number." }, { status: 400 });
      }
    }
    if (endBlock) {
      try {
        conditions.push(lte(factorySetCollateralVaultLiquidated.blockNumber, new Uint(BigInt(endBlock))));
      } catch (e) {
        return Response.json({ error: "Invalid endBlock parameter. Must be a valid number." }, { status: 400 });
      }
    }
    if (startTimestamp) {
      try {
        conditions.push(gte(factorySetCollateralVaultLiquidated.blockTimestamp, new Uint(BigInt(startTimestamp))));
      } catch (e) {
        return Response.json({ error: "Invalid startTimestamp parameter. Must be a valid number." }, { status: 400 });
      }
    }
    if (endTimestamp) {
      try {
        conditions.push(lte(factorySetCollateralVaultLiquidated.blockTimestamp, new Uint(BigInt(endTimestamp))));
      } catch (e) {
        return Response.json({ error: "Invalid endTimestamp parameter. Must be a valid number." }, { status: 400 });
      }
    }

    // Get internal liquidations with complex join and grouping logic
    // Inner join factorySetCollateralVaultLiquidated with positionSnapshot
    // Filter for matching block numbers, group by vault_address, get first row per vault sorted by logIndex DESC
    let baseQuery = sql`
      WITH ranked_snapshots AS (
        SELECT 
          f.factory_address,
          f.collateral_vault,
          f.credit_vault,
          f.debt_vault,
          f.liquidator_address,
          f.block_number,
          f.block_timestamp,
          f.txn_hash,
          f.credit_reserved,
          f.debt,
          f.total_collateral,
          f.user_owned_collateral,
          f.twyne_liq_ltv,
          f.credit_reserved_usd,
          f.debt_usd,
          f.total_collateral_usd,
          f.user_owned_collateral_usd,
          p.max_release,
          p.max_release_usd,
          p.max_repay,
          p.max_repay_usd,
          p.user_owned_collateral as p_user_owned_collateral,
          p.user_owned_collateral_usd as p_user_owned_collateral_usd,
          p.total_assets_deposited_or_reserved,
          p.total_assets_deposited_or_reserved_usd,
          ROW_NUMBER() OVER (PARTITION BY p.vault_address ORDER BY p.log_index DESC) as rn
        FROM ${factorySetCollateralVaultLiquidated} f
        INNER JOIN ${positionSnapshot} p 
          ON f.collateral_vault = p.vault_address 
          AND f.block_number = p.block_number
      )
      SELECT 
        factory_address,
        collateral_vault,
        credit_vault,
        debt_vault,
        liquidator_address,
        block_number,
        block_timestamp,
        txn_hash,
        credit_reserved,
        debt,
        twyne_liq_ltv,
        credit_reserved_usd,
        debt_usd,
        max_release as pre_max_release,
        max_release_usd as pre_max_release_usd,
        max_repay as pre_max_repay,
        max_repay_usd as pre_max_repay_usd,
        user_owned_collateral as pre_user_owned_collateral,
        user_owned_collateral_usd as pre_user_owned_collateral_usd,
        total_collateral as pre_total_collateral,
        total_collateral_usd as pre_total_collateral_usd,
        total_assets_deposited_or_reserved as total_collateral,
        total_assets_deposited_or_reserved_usd
      FROM ranked_snapshots
      WHERE rn = 1
    `;

    // Apply additional filters if provided
    if (conditions.length > 0) {
      const whereConditions = [];
      for (const condition of conditions) {
        if (condition.toString().includes('block_number')) {
          whereConditions.push(condition.toString().replace('factory_set_collateral_vault_liquidated.block_number', 'block_number'));
        } else if (condition.toString().includes('block_timestamp')) {
          whereConditions.push(condition.toString().replace('factory_set_collateral_vault_liquidated.block_timestamp', 'block_timestamp'));
        }
      }
      if (whereConditions.length > 0) {
        baseQuery = sql`
          WITH ranked_snapshots AS (
            SELECT 
              f.factory_address,
              f.collateral_vault,
              f.credit_vault,
              f.debt_vault,
              f.liquidator_address,
              f.block_number,
              f.block_timestamp,
              f.txn_hash,
              f.credit_reserved,
              f.debt,
              f.total_collateral,
              f.user_owned_collateral,
              f.twyne_liq_ltv,
              f.credit_reserved_usd,
              f.debt_usd,
              f.total_collateral_usd,
              f.user_owned_collateral_usd,
              p.max_release,
              p.max_release_usd,
              p.max_repay,
              p.max_repay_usd,
              p.user_owned_collateral as p_user_owned_collateral,
              p.user_owned_collateral_usd as p_user_owned_collateral_usd,
              p.total_assets_deposited_or_reserved,
              p.total_assets_deposited_or_reserved_usd,
              ROW_NUMBER() OVER (PARTITION BY p.vault_address ORDER BY p.log_index DESC) as rn
            FROM ${factorySetCollateralVaultLiquidated} f
            INNER JOIN ${positionSnapshot} p 
              ON f.collateral_vault = p.vault_address 
              AND f.block_number = p.block_number
            WHERE ${sql.raw(whereConditions.join(' AND '))}
          )
          SELECT 
            factory_address,
            collateral_vault,
            credit_vault,
            debt_vault,
            liquidator_address,
            block_number,
            block_timestamp,
            txn_hash,
            credit_reserved,
            debt,
            twyne_liq_ltv,
            credit_reserved_usd,
            debt_usd,
            max_release as pre_max_release,
            max_release_usd as pre_max_release_usd,
            max_repay as pre_max_repay,
            max_repay_usd as pre_max_repay_usd,
            user_owned_collateral as pre_user_owned_collateral,
            user_owned_collateral_usd as pre_user_owned_collateral_usd,
            total_collateral as pre_total_collateral,
            total_collateral_usd as pre_total_collateral_usd,
            total_assets_deposited_or_reserved as total_collateral,
            total_assets_deposited_or_reserved_usd
          FROM ranked_snapshots
          WHERE rn = 1
        `;
      }
    }

    baseQuery = sql`${baseQuery} ORDER BY block_timestamp DESC LIMIT ${limit} OFFSET ${offset}`;

    const liquidationsResult = await client.execute(baseQuery);

    // Get total count with same complex join and filters
    let countQuery = sql`
      SELECT COUNT(DISTINCT f.collateral_vault) as count
      FROM ${factorySetCollateralVaultLiquidated} f
      INNER JOIN ${positionSnapshot} p 
        ON f.collateral_vault = p.vault_address 
        AND f.block_number = p.block_number
    `;

    if (conditions.length > 0) {
      const whereConditions = [];
      for (const condition of conditions) {
        if (condition.toString().includes('block_number')) {
          whereConditions.push(condition.toString().replace('factory_set_collateral_vault_liquidated.block_number', 'f.block_number'));
        } else if (condition.toString().includes('block_timestamp')) {
          whereConditions.push(condition.toString().replace('factory_set_collateral_vault_liquidated.block_timestamp', 'f.block_timestamp'));
        }
      }
      if (whereConditions.length > 0) {
        countQuery = sql`${countQuery} WHERE ${sql.raw(whereConditions.join(' AND '))}`;
      }
    }

    const totalCountResult = await client.execute(countQuery);
    const totalCount = Number(totalCountResult.rows[0]?.count || 0);

    return Response.json({
      internalLiquidations: liquidationsResult.rows,
      count: liquidationsResult.rows.length,
      totalCount,
      limit,
      offset,
      filters: {
        startBlock,
        endBlock,
        startTimestamp,
        endTimestamp
      },
      timestamp: new Date().toISOString()
    });

  } catch (e) {
    console.error("Internal liquidations query failed:", e);
    console.error("Cause:", (e as Error).cause);
    return Response.json({ 
      error: "Failed to fetch internal liquidations",
      details: (e as Error).message 
    }, { status: 500 });
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

// Get latest 5 answerUpdated events
app.get("/api/chainlink/latest-answers", async (c) => {
  try {
    const client = db.client(c);

    const latestAnswers = await client
      .select()
      .from(answerUpdated)
      .orderBy(desc(answerUpdated.blockTimestamp))
      .limit(5);

    return Response.json({
      latestAnswers,
      count: latestAnswers.length,
      timestamp: new Date().toISOString()
    });
  } catch (e) {
    console.error("Latest answers query failed:", e);
    console.error("Cause:", (e as Error).cause);
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