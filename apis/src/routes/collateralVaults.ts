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

  // Get position snapshot history for a specific vault address
  app.get("/api/collateralVaults/:address/history", async (c) => {
    try {
      const client = db.client(c);
      const vaultAddressParam = c.req.param("address");
      const chainIds = parseChainIds(c.req.query("chainIds"));

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

      // Parse optional flag
      const includePricedAmounts = c.req.query("includePricedAmounts") !== "false";

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

      // Fetch vault metrics to get decimals and prices for all relevant vaults
      const chainIdStrings = chainIds.map(id => id.value.toString());
      const vaultPricesQuery = sql.raw(`
        WITH latest_metrics AS (
          SELECT
            vault_address,
            decimals,
            total_assets,
            total_assets_usd,
            symbol,
            CASE
              WHEN total_assets > 0 THEN total_assets_usd::numeric / total_assets::numeric
              ELSE 0
            END as price_per_token
          FROM vault_metrics
          WHERE (vault_address, block_number) IN (
            SELECT vault_address, MAX(block_number) as max_block_number
            FROM vault_metrics
            WHERE chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
            GROUP BY vault_address
          )
            AND chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
        )
        SELECT
          vault_address,
          price_per_token,
          decimals,
          symbol
        FROM latest_metrics
      `);

      const vaultPricesResult = await client.execute(vaultPricesQuery);
      const vaultPricesMap: Record<string, any> = {};

      vaultPricesResult.rows.forEach((row: any) => {
        const address = '0x' + Buffer.from(row.vault_address).toString('hex');
        vaultPricesMap[address] = {
          pricePerToken: parseFloat(row.price_per_token) || 0,
          decimals: 18,
          symbol: row.symbol
        };
      });

      // Helper function to safely convert address fields to hex
      const toAddressHex = (field: any): string => {
        if (!field) return '0x0000000000000000000000000000000000000000';
        if (Buffer.isBuffer(field)) return '0x' + field.toString('hex');
        if (field.address) {
          if (Buffer.isBuffer(field.address)) return '0x' + field.address.toString('hex');
          return '0x' + Buffer.from(field.address).toString('hex');
        }
        if (typeof field === 'string') return field.startsWith('0x') ? field : '0x' + field;
        return '0x0000000000000000000000000000000000000000';
      };

      // Format snapshots with scaled values
      const formattedSnapshots = snapshots.map((snapshot: any) => {
        const underlyingCollateralVault = toAddressHex(snapshot.underlyingCollateralVault);
        const creditVault = toAddressHex(snapshot.creditVault);
        const debtVault = toAddressHex(snapshot.targetVault);

        // Helper to safely extract BigInt value
        const toBigInt = (field: any): bigint => {
          if (!field) return BigInt(0);
          if (typeof field === 'bigint') return field;

          // Handle Drizzle Uint type - extract .value first
          const value = field?.value !== undefined ? field.value : field;

          // Now convert the extracted value
          if (typeof value === 'bigint') return value;
          if (typeof value === 'string') return BigInt(value);
          if (typeof value === 'number') return BigInt(Math.floor(value));

          // If it's still an object, try toString
          try {
            if (typeof value === 'object' && value !== null) {
              return BigInt(value.toString());
            }
          } catch (e) {
            console.error('Failed to convert to BigInt:', value, e);
          }

          return BigInt(0);
        };

        const userOwnedCollateral = toBigInt(snapshot.userOwnedCollateral);
        const maxRelease = toBigInt(snapshot.maxRelease);
        const maxRepay = toBigInt(snapshot.maxRepay);
        const totalAssetsDepositedOrReserved = toBigInt(snapshot.totalAssetsDepositedOrReserved);

        // Get decimals for each vault
        const underlyingDecimals = vaultPricesMap[underlyingCollateralVault]?.decimals || 18;
        const creditDecimals = vaultPricesMap[creditVault]?.decimals || 18;
        const debtDecimals = vaultPricesMap[debtVault]?.decimals || 18;

        // Calculate scale factors
        const underlyingScaleFactor = Math.pow(10, underlyingDecimals);
        const creditScaleFactor = Math.pow(10, creditDecimals);
        const debtScaleFactor = Math.pow(10, debtDecimals);

        // Calculate scaled amounts
        const userOwnedCollateralScaled = Number(userOwnedCollateral) / underlyingScaleFactor;
        const maxReleaseScaled = Number(maxRelease) / creditScaleFactor;
        const maxRepayScaled = Number(maxRepay) / debtScaleFactor;
        const totalAssetsDepositedOrReservedScaled = Number(totalAssetsDepositedOrReserved) / underlyingScaleFactor;

        const result: any = {
          vaultAddress: toAddressHex(snapshot.vaultAddress),
          underlyingCollateralVault,
          creditVault,
          debtVault,
          userOwnedCollateral: userOwnedCollateralScaled,
          maxRelease: maxReleaseScaled,
          maxRepay: maxRepayScaled,
          totalAssetsDepositedOrReserved: totalAssetsDepositedOrReservedScaled,
          canLiquidate: snapshot.canLiquidate,
          isExternallyLiquidated: snapshot.isExternallyLiquidated,
          twyneLiqLtv: Number(snapshot.twyneLiqLtv?.value || snapshot.twyneLiqLtv || 0) / 1e4,
          state: snapshot.state,
          txType: snapshot.txType,
          blockNumber: Number(snapshot.blockNumber?.value || snapshot.blockNumber || 0),
          blockTimestamp: Number(snapshot.blockTimestamp?.value || snapshot.blockTimestamp || 0),
          logIndex: Number(snapshot.log_index || 0)
        };

        if (includePricedAmounts) {
          const underlyingPrice = vaultPricesMap[underlyingCollateralVault]?.pricePerToken || 0;
          const creditPrice = vaultPricesMap[creditVault]?.pricePerToken || 0;
          const debtPrice = vaultPricesMap[debtVault]?.pricePerToken || 0;

          result.userOwnedCollateralUsd = userOwnedCollateralScaled * underlyingPrice;
          result.maxReleaseUsd = maxReleaseScaled * creditPrice;
          result.maxRepayUsd = maxRepayScaled * debtPrice;
          result.totalAssetsDepositedOrReservedUsd = totalAssetsDepositedOrReservedScaled * underlyingPrice;
        }

        return result;
      });

      return Response.json({
        vaultAddress: vaultAddressParam,
        snapshots: formattedSnapshots,
        count: formattedSnapshots.length,
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

      // Fetch vault metrics to get decimals for scaling
      const chainIdStrings = chainIds.map(id => id.value.toString());
      const vaultPricesQuery = sql.raw(`
        WITH latest_metrics AS (
          SELECT
            vault_address,
            decimals,
            symbol
          FROM vault_metrics
          WHERE (vault_address, block_number) IN (
            SELECT vault_address, MAX(block_number) as max_block_number
            FROM vault_metrics
            WHERE chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
            GROUP BY vault_address
          )
            AND chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
        )
        SELECT
          vault_address,
          decimals,
          symbol
        FROM latest_metrics
      `);

      const vaultPricesResult = await client.execute(vaultPricesQuery);
      const vaultDecimalsMap: Record<string, number> = {};

      vaultPricesResult.rows.forEach((row: any) => {
        const address = '0x' + Buffer.from(row.vault_address).toString('hex');
        vaultDecimalsMap[address] = Number(row.decimals) || 18;
      });

      // Format liquidations with scaled values
      const formattedLiquidations = liquidations.map((liq: any) => {
        const underlyingCollateralVault = '0x' + Buffer.from(liq.underlyingCollateralVault.address).toString('hex');
        const creditVault = '0x' + Buffer.from(liq.creditVault.address).toString('hex');
        const debtVault = '0x' + Buffer.from(liq.debtVault.address).toString('hex');

        // Get decimals for each vault
        const underlyingDecimals = vaultDecimalsMap[underlyingCollateralVault] || 18;
        const creditDecimals = vaultDecimalsMap[creditVault] || 18;
        const debtDecimals = vaultDecimalsMap[debtVault] || 18;

        // Calculate scale factors
        const underlyingScaleFactor = Math.pow(10, underlyingDecimals);
        const creditScaleFactor = Math.pow(10, creditDecimals);
        const debtScaleFactor = Math.pow(10, debtDecimals);
        const usdScaleFactor = 1e18; // USD values are stored with 18 decimals

        // Helper function to convert address-like fields to hex
        const toHex = (field: any): string => {
          if (!field) return '0x';

          // Handle Buffer directly
          if (Buffer.isBuffer(field)) {
            return '0x' + field.toString('hex');
          }

          // Handle objects with .address property (Drizzle Address type)
          if (field.address !== undefined) {
            if (Buffer.isBuffer(field.address)) {
              return '0x' + field.address.toString('hex');
            }
            try {
              return '0x' + Buffer.from(field.address).toString('hex');
            } catch {
              return '0x';
            }
          }

          // Handle string
          if (typeof field === 'string') {
            return field.startsWith('0x') ? field : '0x' + field;
          }

          // Handle Uint8Array or array-like (Drizzle _Bytes type)
          if (field.length !== undefined || Array.isArray(field)) {
            try {
              const bytes = Array.isArray(field) ? field : Array.from(field);
              return '0x' + Buffer.from(bytes).toString('hex');
            } catch {
              return '0x';
            }
          }

          // Last resort: try to extract bytes from object
          try {
            if (typeof field === 'object') {
              const bytes = Object.values(field);
              if (bytes.every(b => typeof b === 'number')) {
                return '0x' + Buffer.from(bytes as number[]).toString('hex');
              }
            }
          } catch {
            // Fall through
          }

          return '0x';
        };

        return {
          vaultAddress: toHex(liq.vaultAddress),
          blockNumber: Number(liq.blockNumber.value),
          blockTimestamp: Number(liq.blockTimestamp.value),
          txnHash: liq.txnHash, // Let Drizzle handle serialization
          liquidator: toHex(liq.liquidator),
          violator: toHex(liq.violator),
          collateral: toHex(liq.collateral),
          repayAssets: Number(liq.repayAssets.value) / debtScaleFactor,
          yieldBalance: Number(liq.yieldBalance.value) / creditScaleFactor,
          repayAssetsUsd: Number(liq.repayAssetsUsd.value) / usdScaleFactor,
          yieldBalanceUsd: Number(liq.yieldBalanceUsd.value) / usdScaleFactor,
          collateralAmount: Number(liq.collateralAmount.value) / underlyingScaleFactor,
          debtAmount: Number(liq.debtAmount.value) / debtScaleFactor,
          collateralAmountUsd: Number(liq.collateralAmountUsd.value) / usdScaleFactor,
          debtAmountUsd: Number(liq.debtAmountUsd.value) / usdScaleFactor,
          eulerLiqLtv: Number(liq.eulerLiqLtv.value) / 1e4,
          twyneLiqLtv: Number(liq.twyneLiqLtv.value) / 1e4,
          twyneMaxLiqLtv: Number(liq.twyneMaxLiqLtv.value) / 1e4,
          twyneSafetyBuffer: Number(liq.twyneSafetyBuffer.value) / 1e4,
          preCollateralAmount: Number(liq.preCollateralAmount.value) / underlyingScaleFactor,
          preCollateralAmountUsd: Number(liq.preCollateralAmountUsd.value) / usdScaleFactor,
          preDebtAmount: Number(liq.preDebtAmount.value) / debtScaleFactor,
          preDebtAmountUsd: Number(liq.preDebtAmountUsd.value) / usdScaleFactor,
          preCreditReserved: Number(liq.preCreditReserved.value) / creditScaleFactor,
          preCreditReservedUsd: Number(liq.preCreditReservedUsd.value) / usdScaleFactor,
          creditReserved: Number(liq.creditReserved.value) / creditScaleFactor,
          creditReservedUsd: Number(liq.creditReservedUsd.value) / usdScaleFactor,
          creditVault,
          debtVault,
          underlyingCollateralVault
        };
      });

      return Response.json({
        externalLiquidations: formattedLiquidations,
        count: formattedLiquidations.length,
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

      // Fetch vault metrics to get decimals for scaling
      const chainIdStrings = chainIds.map(id => id.value.toString());
      const vaultPricesQuery = sql.raw(`
        WITH latest_metrics AS (
          SELECT
            vault_address,
            decimals,
            symbol
          FROM vault_metrics
          WHERE (vault_address, block_number) IN (
            SELECT vault_address, MAX(block_number) as max_block_number
            FROM vault_metrics
            WHERE chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
            GROUP BY vault_address
          )
            AND chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
        )
        SELECT
          vault_address,
          decimals,
          symbol
        FROM latest_metrics
      `);

      const vaultPricesResult = await client.execute(vaultPricesQuery);
      const vaultDecimalsMap: Record<string, number> = {};

      vaultPricesResult.rows.forEach((row: any) => {
        const address = '0x' + Buffer.from(row.vault_address).toString('hex');
        vaultDecimalsMap[address] = Number(row.decimals) || 18;
      });

      // Format liquidations with scaled values
      const formattedLiquidations = liquidations.map((liq: any) => {
        // Convert addresses to hex strings
        const underlyingCollateralVault = '0x' + Buffer.from(liq.underlyingCollateralVault.address).toString('hex');
        const creditVault = '0x' + Buffer.from(liq.creditVault.address).toString('hex');
        const debtVault = '0x' + Buffer.from(liq.debtVault.address).toString('hex');
        const collateralVault = '0x' + Buffer.from(liq.collateralVault.address).toString('hex');

        // Get decimals for each vault
        const underlyingDecimals = vaultDecimalsMap[underlyingCollateralVault] || 18;
        const creditDecimals = vaultDecimalsMap[creditVault] || 18;
        const debtDecimals = vaultDecimalsMap[debtVault] || 18;

        // Calculate scale factors
        const underlyingScaleFactor = Math.pow(10, underlyingDecimals);
        const creditScaleFactor = Math.pow(10, creditDecimals);
        const debtScaleFactor = Math.pow(10, debtDecimals);
        const usdScaleFactor = 1e18; // USD values are stored with 18 decimals

        return {
          chainId: Number(liq.chainId.value),
          factoryAddress: '0x' + Buffer.from(liq.factoryAddress.address).toString('hex'),
          collateralVault,
          creditVault,
          debtVault,
          underlyingCollateralVault,
          liquidatorAddress: '0x' + Buffer.from(liq.liquidatorAddress.address).toString('hex'),
          blockNumber: Number(liq.blockNumber.value),
          blockTimestamp: Number(liq.blockTimestamp.value),
          txnHash: liq.txnHash,
          creditReserved: Number(liq.creditReserved.value) / creditScaleFactor,
          debt: Number(liq.debt.value) / debtScaleFactor,
          totalCollateral: Number(liq.totalCollateral.value) / underlyingScaleFactor,
          userOwnedCollateral: Number(liq.userOwnedCollateral.value) / underlyingScaleFactor,
          twyneLiqLtv: Number(liq.twyneLiqLtv.value) / 1e4,
          creditReservedUsd: Number(liq.creditReservedUsd.value) / usdScaleFactor,
          debtUsd: Number(liq.debtUsd.value) / usdScaleFactor,
          totalCollateralUsd: Number(liq.totalCollateralUsd.value) / usdScaleFactor,
          userOwnedCollateralUsd: Number(liq.userOwnedCollateralUsd.value) / usdScaleFactor
        };
      });

      return Response.json({
        internalLiquidations: formattedLiquidations,
        count: formattedLiquidations.length,
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

  // Get snapshot of all collateral vaults at a specific block (or latest if not provided)
  app.get("/api/collateralVaults/snapshots", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      // Validate pagination
      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      // Parse optional block number and timestamp parameters
      const blockNumberParam = c.req.query("blockNumber");
      const timestampParam = c.req.query("timestamp");
      let targetBlock: types.Uint;
      let targetTimestamp: types.Uint | null = null;

      if (blockNumberParam) {
        // Use provided block number (priority over timestamp)
        const blockValidation = validateBlockNumber(blockNumberParam);
        if (!blockValidation.success) {
          return errorResponse(blockValidation.error!);
        }
        targetBlock = blockValidation.value!;
      } else if (timestampParam) {
        // Use provided timestamp to find the closest block
        const timestampValidation = validateTimestamp(timestampParam);
        if (!timestampValidation.success) {
          return errorResponse(timestampValidation.error!);
        }
        targetTimestamp = timestampValidation.value!;

        // Find the max block number where block_timestamp <= target timestamp
        const chainIdStrings = chainIds.map(id => id.value.toString());
        const blockAtTimestampQuery = sql.raw(`
          SELECT MAX(block_number) as max_block
          FROM vault_metrics
          WHERE block_timestamp <= ${targetTimestamp.value.toString()}
            AND chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
        `);

        const blockAtTimestampResult = await client.execute(blockAtTimestampQuery);
        const maxBlock = blockAtTimestampResult.rows[0]?.max_block as string | number | undefined;

        if (!maxBlock) {
          return Response.json({
            blockNumber: null,
            snapshotBlock: null,
            priceBlock: null,
            timestamp: Number(targetTimestamp.value),
            snapshots: [],
            vaultPrices: {},
            aggregates: {
              totalUserOwnedCollateralUsd: 0,
              totalMaxReleaseUsd: 0,
              totalMaxRepayUsd: 0,
              totalAssetsDepositedOrReservedUsd: 0,
              uniqueVaults: 0
            },
            responseTimestamp: new Date().toISOString()
          });
        }

        targetBlock = new Uint(BigInt(maxBlock));
      } else {
        // Fetch the max block number from vault_metrics table
        const chainIdStrings = chainIds.map(id => id.value.toString());
        const maxBlockQuery = sql.raw(`
          SELECT MAX(block_number) as max_block
          FROM vault_metrics
          WHERE chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
        `);

        const maxBlockResult = await client.execute(maxBlockQuery);
        const maxBlock = maxBlockResult.rows[0]?.max_block as string | number | undefined;

        if (!maxBlock) {
          return Response.json({
            blockNumber: null,
            snapshotBlock: null,
            priceBlock: null,
            snapshots: [],
            vaultPrices: {},
            aggregates: {
              totalUserOwnedCollateralUsd: 0,
              totalMaxReleaseUsd: 0,
              totalMaxRepayUsd: 0,
              totalAssetsDepositedOrReservedUsd: 0,
              uniqueVaults: 0
            },
            responseTimestamp: new Date().toISOString()
          });
        }

        targetBlock = new Uint(BigInt(maxBlock));
      }

      // Parse optional flags
      const includePricedAmounts = c.req.query("includePricedAmounts") !== "false";

      // Parse optional filters
      const canLiquidateFilter = c.req.query("canLiquidate");
      const isExternallyLiquidatedFilter = c.req.query("isExternallyLiquidated");
      const vaultAddressesParam = c.req.query("vaultAddresses");

      // Parse and validate vault addresses if provided
      let vaultAddresses: types.Address[] = [];
      if (vaultAddressesParam) {
        const addressStrings = vaultAddressesParam.split(',').map(addr => addr.trim()).filter(addr => addr.length > 0);

        for (const addressStr of addressStrings) {
          const validation = validateAddress(addressStr);
          if (!validation.success) {
            return errorResponse(`Invalid vault address '${addressStr}': ${validation.error}`);
          }
          vaultAddresses.push(validation.value!);
        }
      }

      // Convert chainIds to array of numeric string values for SQL
      const chainIdStrings = chainIds.map(id => id.value.toString());

      // Build additional filter conditions
      const additionalConditions = [];

      if (canLiquidateFilter !== undefined) {
        const canLiquidateValue = canLiquidateFilter.toLowerCase() === 'true';
        additionalConditions.push(`can_liquidate = ${canLiquidateValue}`);
      }

      if (isExternallyLiquidatedFilter !== undefined) {
        const isExternallyLiquidatedValue = isExternallyLiquidatedFilter.toLowerCase() === 'true';
        additionalConditions.push(`is_externally_liquidated = ${isExternallyLiquidatedValue}`);
      }

      // Add vault address filter if specified
      if (vaultAddresses.length > 0) {
        const vaultAddressHexStrings = vaultAddresses.map(addr =>
          `'\\x${Buffer.from(addr.address).toString('hex')}'`
        ).join(',');
        additionalConditions.push(`vault_address IN (${vaultAddressHexStrings})`);
      }

      // Step 1: Fetch latest position snapshots up to the target block (only "post" state)
      const additionalWhereClause = additionalConditions.length > 0
        ? `AND ${additionalConditions.join(' AND ')}`
        : '';

      const snapshotsQuery = sql.raw(`
        WITH latest_snapshots AS (
          SELECT
            ps.vault_address,
            ps.underlying_collateral_vault,
            ps.credit_vault,
            ps.debt_vault,
            ps.user_owned_collateral,
            ps.max_release,
            ps.max_repay,
            ps.total_assets_deposited_or_reserved,
            ps.can_liquidate,
            ps.is_externally_liquidated,
            ps.twyne_liq_ltv,
            ps.block_number,
            ps.block_timestamp,
            ps.log_index
          FROM position_snapshot ps
          WHERE (ps.vault_address, ps.block_timestamp) IN (
            SELECT vault_address, MAX(block_timestamp) as max_timestamp
            FROM position_snapshot
            WHERE state = 'post'
              AND block_number <= ${targetBlock.value.toString()}
              AND chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
              ${additionalWhereClause}
            GROUP BY vault_address
          )
            AND ps.state = 'post'
            AND ps.block_number <= ${targetBlock.value.toString()}
            AND ps.chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
            ${additionalWhereClause}
        )
        SELECT * FROM latest_snapshots
        ORDER BY block_timestamp DESC, log_index DESC
        LIMIT ${limit}
        OFFSET ${offset}
      `);

      const snapshotsResult = await client.execute(snapshotsQuery);
      const snapshots = snapshotsResult.rows;

      // Get total count of unique vault addresses with snapshots
      const countQueryAdditionalWhere = additionalConditions.length > 0
        ? `AND ${additionalConditions.join(' AND ')}`
        : '';
      const countQuery = sql.raw(`
        SELECT COUNT(DISTINCT vault_address) as count
        FROM position_snapshot
        WHERE state = 'post'
          AND block_number <= ${targetBlock.value.toString()}
          AND chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
          ${countQueryAdditionalWhere}
      `);

      const totalUniqueVaultsResult = await client.execute(countQuery);
      const totalUniqueVaults = Number(totalUniqueVaultsResult.rows[0]?.count || 0);

      if (snapshots.length === 0) {
        return Response.json({
          blockNumber: Number(targetBlock.value),
          snapshotBlock: null,
          priceBlock: null,
          ...(targetTimestamp && { timestamp: Number(targetTimestamp.value) }),
          snapshots: [],
          vaultPrices: {},
          aggregates: {
            totalUserOwnedCollateralUsd: 0,
            totalMaxReleaseUsd: 0,
            totalMaxRepayUsd: 0,
            totalAssetsDepositedOrReservedUsd: 0,
            uniqueVaults: 0
          },
          totalUniqueVaults,
          limit,
          offset,
          filters: {
            canLiquidate: canLiquidateFilter,
            isExternallyLiquidated: isExternallyLiquidatedFilter
          },
          responseTimestamp: new Date().toISOString()
        });
      }

      // Step 2: Extract unique vault addresses from snapshots for pricing
      const vaultAddressesForPricing = new Set<string>();
      snapshots.forEach((snapshot: any) => {
        if (snapshot.underlying_collateral_vault) {
          vaultAddressesForPricing.add('0x' + Buffer.from(snapshot.underlying_collateral_vault).toString('hex'));
        }
        if (snapshot.credit_vault) {
          vaultAddressesForPricing.add('0x' + Buffer.from(snapshot.credit_vault).toString('hex'));
        }
        if (snapshot.debt_vault) {
          vaultAddressesForPricing.add('0x' + Buffer.from(snapshot.debt_vault).toString('hex'));
        }
      });

      // Step 3: Fetch EVault metrics at closest block <= targetBlock
      const vaultPricesQuery = sql.raw(`
        WITH latest_metrics AS (
          SELECT
            vault_address,
            total_assets,
            total_assets_usd,
            symbol,
            decimals,
            block_number,
            block_timestamp,
            CASE
              WHEN total_assets > 0 THEN total_assets_usd::numeric / total_assets::numeric
              ELSE 0
            END as price_per_token
          FROM vault_metrics
          WHERE (vault_address, block_number) IN (
            SELECT vault_address, MAX(block_number) as max_block_number
            FROM vault_metrics
            WHERE block_number <= ${targetBlock.value.toString()}
              AND chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
            GROUP BY vault_address
          )
            AND block_number <= ${targetBlock.value.toString()}
            AND chain_id = ANY(ARRAY[${chainIdStrings.join(',')}]::numeric[])
        )
        SELECT
          vault_address,
          price_per_token,
          symbol,
          decimals,
          block_number,
          block_timestamp
        FROM latest_metrics
      `);

      const vaultPricesResult = await client.execute(vaultPricesQuery);
      const vaultPricesMap: Record<string, any> = {};

      vaultPricesResult.rows.forEach((row: any) => {
        const address = '0x' + Buffer.from(row.vault_address).toString('hex');
        vaultPricesMap[address] = {
          pricePerToken: (parseFloat(row.price_per_token) / (10 ** (18-Number(row.decimals)))) || 0,
          symbol: row.symbol,
          decimals: Number(row.decimals) || 18,
          blockNumber: Number(row.block_number),
          blockTimestamp: Number(row.block_timestamp)
        };
      });

      // Step 4: Calculate scaled and USD values using proper decimals
      let totalUserOwnedCollateralUsd = 0;
      let totalMaxReleaseUsd = 0;
      let totalMaxRepayUsd = 0;
      let totalAssetsDepositedOrReservedUsd = 0;

      const formattedSnapshots = snapshots.map((snapshot: any) => {
        const vaultAddress = '0x' + Buffer.from(snapshot.vault_address).toString('hex');
        const underlyingCollateralVault = '0x' + Buffer.from(snapshot.underlying_collateral_vault).toString('hex');
        const creditVault = '0x' + Buffer.from(snapshot.credit_vault).toString('hex');
        const debtVault = '0x' + Buffer.from(snapshot.debt_vault).toString('hex');

        const userOwnedCollateral = BigInt(snapshot.user_owned_collateral);
        const maxRelease = BigInt(snapshot.max_release);
        const maxRepay = BigInt(snapshot.max_repay);
        const totalAssetsDepositedOrReserved = BigInt(snapshot.total_assets_deposited_or_reserved);

        // Get prices and decimals from vault metrics
        const underlyingPrice = vaultPricesMap[underlyingCollateralVault]?.pricePerToken || 0;
        const creditPrice = vaultPricesMap[creditVault]?.pricePerToken || 0;
        const debtPrice = vaultPricesMap[debtVault]?.pricePerToken || 0;

        const underlyingDecimals = vaultPricesMap[underlyingCollateralVault]?.decimals || 18;
        const creditDecimals = vaultPricesMap[creditVault]?.decimals || 18;
        const debtDecimals = vaultPricesMap[debtVault]?.decimals || 18;

        // Calculate scale factors based on decimals
        const underlyingScaleFactor = Math.pow(10, underlyingDecimals);
        const creditScaleFactor = Math.pow(10, creditDecimals);
        const debtScaleFactor = Math.pow(10, debtDecimals);

        // Calculate scaled amounts (human-readable token amounts)
        const userOwnedCollateralScaled = Number(userOwnedCollateral) / underlyingScaleFactor;
        const maxReleaseScaled = Number(maxRelease) / creditScaleFactor;
        const maxRepayScaled = Number(maxRepay) / debtScaleFactor;
        const totalAssetsDepositedOrReservedScaled = Number(totalAssetsDepositedOrReserved) / underlyingScaleFactor;

        // Calculate USD values using scaled amounts and prices
        const userOwnedCollateralUsd = userOwnedCollateralScaled * underlyingPrice;
        const maxReleaseUsd = maxReleaseScaled * creditPrice;
        const maxRepayUsd = maxRepayScaled * debtPrice;
        const assetsDepositedOrReservedUsd = totalAssetsDepositedOrReservedScaled * underlyingPrice;

        // Aggregate totals
        totalUserOwnedCollateralUsd += userOwnedCollateralUsd;
        totalMaxReleaseUsd += maxReleaseUsd;
        totalMaxRepayUsd += maxRepayUsd;
        totalAssetsDepositedOrReservedUsd += assetsDepositedOrReservedUsd;

        const result: any = {
          vaultAddress,
          underlyingCollateralVault,
          creditVault,
          debtVault,
          canLiquidate: snapshot.can_liquidate,
          isExternallyLiquidated: snapshot.is_externally_liquidated,
          twyneLiqLtv: snapshot.twyne_liq_ltv / 1e4,
          blockNumber: Number(snapshot.block_number),
          blockTimestamp: Number(snapshot.block_timestamp),
          logIndex: Number(snapshot.log_index),
          // Add price data metadata for each vault
          underlyingCollateralVaultPriceBlock: vaultPricesMap[underlyingCollateralVault]?.blockNumber || null,
          underlyingCollateralVaultPriceTimestamp: vaultPricesMap[underlyingCollateralVault]?.blockTimestamp || null,
          creditVaultPriceBlock: vaultPricesMap[creditVault]?.blockNumber || null,
          creditVaultPriceTimestamp: vaultPricesMap[creditVault]?.blockTimestamp || null,
          debtVaultPriceBlock: vaultPricesMap[debtVault]?.blockNumber || null,
          debtVaultPriceTimestamp: vaultPricesMap[debtVault]?.blockTimestamp || null
        };

        result.userOwnedCollateral = userOwnedCollateralScaled;
        result.maxRelease = maxReleaseScaled;
        result.maxRepay = maxRepayScaled;
        result.totalAssetsDepositedOrReserved = totalAssetsDepositedOrReservedScaled;

        if (includePricedAmounts) {
          result.userOwnedCollateralUsd = userOwnedCollateralUsd;
          result.maxReleaseUsd = maxReleaseUsd;
          result.maxRepayUsd = maxRepayUsd;
          result.totalAssetsDepositedOrReservedUsd = assetsDepositedOrReservedUsd;
        }

        return result;
      });

      // Get actual snapshot block (max block from results)
      const snapshotBlock = snapshots.length > 0
        ? Math.max(...snapshots.map((s: any) => parseInt(s.block_number)))
        : null;

      // Get price block (max block from vault prices)
      const priceBlock = vaultPricesResult.rows.length > 0
        ? Math.max(...vaultPricesResult.rows.map((r: any) => parseInt(r.block_number)))
        : null;

      return Response.json({
        blockNumber: Number(targetBlock.value),
        snapshotBlock,
        priceBlock,
        ...(targetTimestamp && { timestamp: Number(targetTimestamp.value) }),
        snapshots: formattedSnapshots,
        vaultPrices: vaultPricesMap,
        aggregates: {
          totalUserOwnedCollateralUsd,
          totalMaxReleaseUsd,
          totalMaxRepayUsd,
          totalAssetsDepositedOrReservedUsd,
          uniqueVaults: snapshots.length
        },
        totalUniqueVaults,
        limit,
        offset,
        filters: {
          canLiquidate: canLiquidateFilter,
          isExternallyLiquidated: isExternallyLiquidatedFilter,
          vaultAddresses: vaultAddressesParam
        },
        responseTimestamp: new Date().toISOString()
      });

    } catch (e) {
      return serverError(e as Error, "Failed to fetch snapshot at block");
    }
  });
}
