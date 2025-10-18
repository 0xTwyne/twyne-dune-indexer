import { App, db, types } from "@duneanalytics/sim-idx";
import { eq, desc, sql, count, and, gte, lte, inArray } from "drizzle-orm";
import {
  vaultCreated,
  positionSnapshot,
  factorySetCollateralVaultLiquidated,
  externalLiquidation,
  preExternalLiquidation
} from "../db/schema/Listener";
import { parseChainIds } from "../utils/chainIds";
import { validateAddress, validatePagination, validateBlockNumber, validateTimestamp } from "../utils/validation";
import { errorResponse, serverError } from "../utils/errors";

const Uint = types.Uint;

export function registerCollateralVaultRoutes(app: ReturnType<typeof App.create>) {
  // Get all created vaults with pagination
  app.get("/api/collateralVaults", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      // Validate pagination (this fixes the bug we found in testing)
      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      // Parse blockNumber parameter
      const blockNumberParam = c.req.query("endBlock");
      let blockNumberFilter: types.Uint | null = null;
      if (blockNumberParam) {
        const blockValidation = validateBlockNumber(blockNumberParam);
        if (!blockValidation.success) {
          return errorResponse(blockValidation.error!);
        }
        blockNumberFilter = blockValidation.value!;
      }

      // Build where conditions
      const whereConditions = [inArray(vaultCreated.chainId, chainIds)];
      if (blockNumberFilter) {
        whereConditions.push(lte(vaultCreated.blockNumber, blockNumberFilter));
      }

      const result = await client
        .select()
        .from(vaultCreated)
        .where(and(...whereConditions))
        .orderBy(desc(vaultCreated.blockTimestamp))
        .limit(limit)
        .offset(offset);
      console.log(result);

      // Update totalCount query to respect blockNumber filter
      const totalCountQuery = client
        .select({ count: count() })
        .from(vaultCreated);

      if (blockNumberFilter) {
        totalCountQuery.where(and(
          inArray(vaultCreated.chainId, chainIds),
          lte(vaultCreated.blockNumber, blockNumberFilter)
        ));
      } else {
        totalCountQuery.where(inArray(vaultCreated.chainId, chainIds));
      }

      const totalCount = await totalCountQuery;

      return Response.json({
        vaults: result,
        count: result.length,
        totalCount: totalCount[0].count,
        limit,
        offset,
        ...(blockNumberFilter && { blockNumber: blockNumberFilter.toString() })
      });
    } catch (e) {
      return serverError(e as Error, "Database operation failed");
    }
  });

  // Get latest position snapshot for each vault address
  app.get("/api/collateralVaults/latest-snapshots", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      // Validate pagination
      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      const canLiquidateFilter = c.req.query("canLiquidate");
      const isExternallyLiquidatedFilter = c.req.query("isExternallyLiquidated");

      console.log("chainIds", chainIds);

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

      // Build the base subquery for latest snapshots (only "post" state to avoid double counting)
      let baseSubquery = sql`
        SELECT vault_address, MAX(block_timestamp) as max_timestamp
        FROM ${positionSnapshot}
        WHERE state = 'post'
      `;

      // Add additional filters to subquery if needed
      if (additionalConditions.length > 0) {
        baseSubquery = sql`${baseSubquery} AND ${sql.join(additionalConditions, sql` AND `)}`;
      }

      baseSubquery = sql`${baseSubquery} GROUP BY vault_address`;

      // Get the latest position snapshot for each vault address
      const latestSnapshots = await client
        .select()
        .from(positionSnapshot)
        .where(
          and(
            sql`(vault_address, block_timestamp) IN (${baseSubquery})`,
            inArray(positionSnapshot.chainId, chainIds),
            sql`state = 'post'`
          )
        )
        .orderBy(desc(positionSnapshot.blockTimestamp), desc(positionSnapshot.logIndex))
        .limit(limit)
        .offset(offset);

      // Get total count of unique vault addresses with snapshots (applying same filters including "post" state)
      let countQuery = sql`SELECT COUNT(DISTINCT vault_address) as count FROM ${positionSnapshot} WHERE state = 'post'`;
      if (additionalConditions.length > 0) {
        countQuery = sql`${countQuery} AND ${sql.join(additionalConditions, sql` AND `)}`;
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
      return serverError(e as Error, "Failed to fetch latest position snapshots");
    }
  });

  // Get latest position snapshot for a specific vault address
  app.get("/api/collateralVaults/:address/latest-snapshot", async (c) => {
    try {
      const client = db.client(c);
      const vaultAddressParam = c.req.param("address");

      // Validate vault address parameter
      const addressValidation = validateAddress(vaultAddressParam);
      if (!addressValidation.success) {
        return errorResponse(addressValidation.error!);
      }
      const vaultAddress = addressValidation.value!;

      // Get the latest snapshot for this specific vault (only "post" state to avoid double counting)
      const latestSnapshot = await client
        .select()
        .from(positionSnapshot)
        .where(
          and(
            eq(positionSnapshot.vaultAddress, vaultAddress),
            sql`state = 'post'`
          )
        )
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
      return serverError(e as Error, "Failed to fetch latest position snapshot");
    }
  });

  // Get position snapshot history for a specific vault address
  app.get("/api/collateralVaults/:address/history", async (c) => {
    try {
      const client = db.client(c);
      const vaultAddressParam = c.req.param("address");

      // Validate vault address parameter
      const addressValidation = validateAddress(vaultAddressParam);
      if (!addressValidation.success) {
        return errorResponse(addressValidation.error!);
      }
      const vaultAddress = addressValidation.value!;

      // Validate pagination
      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

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
      return serverError(e as Error, "Failed to fetch position snapshot history");
    }
  });

  // Get external liquidations for collateral vaults
  app.get("/api/collateralVaults/external-liquidations", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      // Validate pagination
      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

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
          eulerLiqLtv: preExternalLiquidation.eulerLiqLtv,
          twyneLiqLtv: preExternalLiquidation.twyneLiqLtv,
          twyneMaxLiqLtv: preExternalLiquidation.twyneMaxLiqLtv,
          twyneSafetyBuffer: preExternalLiquidation.twyneSafetyBuffer,
          preCollateralAmount: preExternalLiquidation.collateralAmount,
          preCollateralAmountUsd: preExternalLiquidation.collateralAmountUsd,
          preDebtAmount: preExternalLiquidation.debtAmount,
          preDebtAmountUsd: preExternalLiquidation.debtAmountUsd,
          preCreditReserved: preExternalLiquidation.creditReserved,
          preCreditReservedUsd: preExternalLiquidation.creditReservedUsd,
          creditReserved: externalLiquidation.creditReserved,
          creditReservedUsd: externalLiquidation.creditReservedUsd,
          creditVault: vaultCreated.intermediateVault,
          debtVault: vaultCreated.targetVault,
          underlyingCollateralVault: vaultCreated.underlyingCollateralVault,
        })
        .from(externalLiquidation)
        .where(inArray(externalLiquidation.chainId, chainIds))
        .innerJoin(vaultCreated, eq(externalLiquidation.violator, vaultCreated.vaultAddress))
        .innerJoin(preExternalLiquidation, eq(externalLiquidation.txnHash, preExternalLiquidation.txnHash))
        .orderBy(desc(externalLiquidation.blockTimestamp))
        .limit(limit)
        .offset(offset);

      // Get total count of external liquidations for collateral vaults with preExternalLiquidation join
      const totalCountResult = await client
        .select({ count: count() })
        .from(externalLiquidation)
        .where(inArray(externalLiquidation.chainId, chainIds))
        .innerJoin(vaultCreated, eq(externalLiquidation.violator, vaultCreated.vaultAddress))
        .innerJoin(preExternalLiquidation, eq(externalLiquidation.txnHash, preExternalLiquidation.txnHash))

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
      return serverError(e as Error, "Failed to fetch external liquidations");
    }
  });

  // Get internal liquidations (factory set collateral vault liquidated events)
  app.get("/api/collateralVaults/internal-liquidations", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      // Validate pagination
      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      // Get filter parameters
      const startBlock = c.req.query("startBlock");
      const endBlock = c.req.query("endBlock");
      const startTimestamp = c.req.query("startTimestamp");
      const endTimestamp = c.req.query("endTimestamp");

      // Build query conditions
      const conditions = [];

      // Add chainId filter
      conditions.push(inArray(factorySetCollateralVaultLiquidated.chainId, chainIds));

      if (startBlock) {
        const validation = validateTimestamp(startBlock);
        if (!validation.success) {
          return errorResponse("Invalid startBlock parameter. Must be a valid number.");
        }
        conditions.push(gte(factorySetCollateralVaultLiquidated.blockNumber, validation.value!));
      }
      if (endBlock) {
        const validation = validateTimestamp(endBlock);
        if (!validation.success) {
          return errorResponse("Invalid endBlock parameter. Must be a valid number.");
        }
        conditions.push(lte(factorySetCollateralVaultLiquidated.blockNumber, validation.value!));
      }
      if (startTimestamp) {
        const validation = validateTimestamp(startTimestamp);
        if (!validation.success) {
          return errorResponse("Invalid startTimestamp parameter. Must be a valid number.");
        }
        conditions.push(gte(factorySetCollateralVaultLiquidated.blockTimestamp, validation.value!));
      }
      if (endTimestamp) {
        const validation = validateTimestamp(endTimestamp);
        if (!validation.success) {
          return errorResponse("Invalid endTimestamp parameter. Must be a valid number.");
        }
        conditions.push(lte(factorySetCollateralVaultLiquidated.blockTimestamp, validation.value!));
      }

      // Query internal liquidations from factory_set_collateral_vault_liquidated table
      const liquidations = await client
        .select()
        .from(factorySetCollateralVaultLiquidated)
        .where(and(...conditions))
        .orderBy(desc(factorySetCollateralVaultLiquidated.blockTimestamp))
        .limit(limit)
        .offset(offset);

      // Get total count
      const countResult = await client
        .select({ count: sql<number>`count(*)` })
        .from(factorySetCollateralVaultLiquidated)
        .where(and(...conditions));

      const totalCount = Number(countResult[0]?.count || 0);

      return Response.json({
        internalLiquidations: liquidations,
        count: liquidations.length,
        totalCount,
        limit,
        offset,
        filters: {
          chainIds: chainIds.map(id => id.toString()),
          startBlock,
          endBlock,
          startTimestamp,
          endTimestamp
        },
        timestamp: new Date().toISOString()
      });

    } catch (e) {
      return serverError(e as Error, "Failed to fetch internal liquidations");
    }
  });
}
