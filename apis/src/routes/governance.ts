import { App, db } from "@duneanalytics/sim-idx";
import { desc, count, and, eq, inArray } from "drizzle-orm";
import {
  govSetCaps,
  govSetConfigFlags,
  govSetFeeReceiver,
  govSetGovernorAdmin,
  govSetHookConfig,
  govSetInterestFee,
  govSetInterestRateModel,
  govSetLiquidationCoolOffTime,
  govSetLtv,
  govSetMaxLiquidationDiscount
} from "../db/schema/Listener";
import { parseChainIds } from "../utils/chainIds";
import { validateAddress, validatePagination } from "../utils/validation";
import { errorResponse, serverError } from "../utils/errors";

export function registerGovernanceRoutes(app: ReturnType<typeof App.create>) {
  // Get governance parameter changes - GovSetCaps
  app.get("/api/gov-set-caps", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      // Validate pagination
      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      const vaultAddressParam = c.req.query("vaultAddress");

      // Build where conditions
      const whereConditions = [inArray(govSetCaps.chainId, chainIds)];

      if (vaultAddressParam) {
        const addressValidation = validateAddress(vaultAddressParam);
        if (!addressValidation.success) {
          return errorResponse(addressValidation.error!);
        }
        whereConditions.push(eq(govSetCaps.vaultAddress, addressValidation.value!));
      }

      const result = await client
        .select()
        .from(govSetCaps)
        .where(and(...whereConditions))
        .orderBy(desc(govSetCaps.blockNumber))
        .limit(limit)
        .offset(offset);

      const totalCountResult = await client
        .select({ count: count() })
        .from(govSetCaps)
        .where(and(...whereConditions));

      return Response.json({
        events: result,
        count: result.length,
        totalCount: totalCountResult[0].count,
        limit,
        offset,
        timestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "GovSetCaps query failed");
    }
  });

  // Get governance parameter changes - GovSetConfigFlags
  app.get("/api/gov-set-config-flags", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      const vaultAddressParam = c.req.query("vaultAddress");

      const whereConditions = [inArray(govSetConfigFlags.chainId, chainIds)];

      if (vaultAddressParam) {
        const addressValidation = validateAddress(vaultAddressParam);
        if (!addressValidation.success) {
          return errorResponse(addressValidation.error!);
        }
        whereConditions.push(eq(govSetConfigFlags.vaultAddress, addressValidation.value!));
      }

      const result = await client
        .select()
        .from(govSetConfigFlags)
        .where(and(...whereConditions))
        .orderBy(desc(govSetConfigFlags.blockNumber))
        .limit(limit)
        .offset(offset);

      const totalCountResult = await client
        .select({ count: count() })
        .from(govSetConfigFlags)
        .where(and(...whereConditions));

      return Response.json({
        events: result,
        count: result.length,
        totalCount: totalCountResult[0].count,
        limit,
        offset,
        timestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "GovSetConfigFlags query failed");
    }
  });

  // Get governance parameter changes - GovSetFeeReceiver
  app.get("/api/gov-set-fee-receiver", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      const vaultAddressParam = c.req.query("vaultAddress");

      const whereConditions = [inArray(govSetFeeReceiver.chainId, chainIds)];

      if (vaultAddressParam) {
        const addressValidation = validateAddress(vaultAddressParam);
        if (!addressValidation.success) {
          return errorResponse(addressValidation.error!);
        }
        whereConditions.push(eq(govSetFeeReceiver.vaultAddress, addressValidation.value!));
      }

      const result = await client
        .select()
        .from(govSetFeeReceiver)
        .where(and(...whereConditions))
        .orderBy(desc(govSetFeeReceiver.blockNumber))
        .limit(limit)
        .offset(offset);

      const totalCountResult = await client
        .select({ count: count() })
        .from(govSetFeeReceiver)
        .where(and(...whereConditions));

      return Response.json({
        events: result,
        count: result.length,
        totalCount: totalCountResult[0].count,
        limit,
        offset,
        timestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "GovSetFeeReceiver query failed");
    }
  });

  // Get governance parameter changes - GovSetGovernorAdmin
  app.get("/api/gov-set-governor-admin", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      const vaultAddressParam = c.req.query("vaultAddress");

      const whereConditions = [inArray(govSetGovernorAdmin.chainId, chainIds)];

      if (vaultAddressParam) {
        const addressValidation = validateAddress(vaultAddressParam);
        if (!addressValidation.success) {
          return errorResponse(addressValidation.error!);
        }
        whereConditions.push(eq(govSetGovernorAdmin.vaultAddress, addressValidation.value!));
      }

      const result = await client
        .select()
        .from(govSetGovernorAdmin)
        .where(and(...whereConditions))
        .orderBy(desc(govSetGovernorAdmin.blockNumber))
        .limit(limit)
        .offset(offset);

      const totalCountResult = await client
        .select({ count: count() })
        .from(govSetGovernorAdmin)
        .where(and(...whereConditions));

      return Response.json({
        events: result,
        count: result.length,
        totalCount: totalCountResult[0].count,
        limit,
        offset,
        timestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "GovSetGovernorAdmin query failed");
    }
  });

  // Get governance parameter changes - GovSetHookConfig
  app.get("/api/gov-set-hook-config", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      const vaultAddressParam = c.req.query("vaultAddress");

      const whereConditions = [inArray(govSetHookConfig.chainId, chainIds)];

      if (vaultAddressParam) {
        const addressValidation = validateAddress(vaultAddressParam);
        if (!addressValidation.success) {
          return errorResponse(addressValidation.error!);
        }
        whereConditions.push(eq(govSetHookConfig.vaultAddress, addressValidation.value!));
      }

      const result = await client
        .select()
        .from(govSetHookConfig)
        .where(and(...whereConditions))
        .orderBy(desc(govSetHookConfig.blockNumber))
        .limit(limit)
        .offset(offset);

      const totalCountResult = await client
        .select({ count: count() })
        .from(govSetHookConfig)
        .where(and(...whereConditions));

      return Response.json({
        events: result,
        count: result.length,
        totalCount: totalCountResult[0].count,
        limit,
        offset,
        timestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "GovSetHookConfig query failed");
    }
  });

  // Get governance parameter changes - GovSetInterestFee
  app.get("/api/gov-set-interest-fee", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      const vaultAddressParam = c.req.query("vaultAddress");

      const whereConditions = [inArray(govSetInterestFee.chainId, chainIds)];

      if (vaultAddressParam) {
        const addressValidation = validateAddress(vaultAddressParam);
        if (!addressValidation.success) {
          return errorResponse(addressValidation.error!);
        }
        whereConditions.push(eq(govSetInterestFee.vaultAddress, addressValidation.value!));
      }

      const result = await client
        .select()
        .from(govSetInterestFee)
        .where(and(...whereConditions))
        .orderBy(desc(govSetInterestFee.blockNumber))
        .limit(limit)
        .offset(offset);

      const totalCountResult = await client
        .select({ count: count() })
        .from(govSetInterestFee)
        .where(and(...whereConditions));

      return Response.json({
        events: result,
        count: result.length,
        totalCount: totalCountResult[0].count,
        limit,
        offset,
        timestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "GovSetInterestFee query failed");
    }
  });

  // Get governance parameter changes - GovSetInterestRateModel
  app.get("/api/gov-set-interest-rate-model", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      const vaultAddressParam = c.req.query("vaultAddress");

      const whereConditions = [inArray(govSetInterestRateModel.chainId, chainIds)];

      if (vaultAddressParam) {
        const addressValidation = validateAddress(vaultAddressParam);
        if (!addressValidation.success) {
          return errorResponse(addressValidation.error!);
        }
        whereConditions.push(eq(govSetInterestRateModel.vaultAddress, addressValidation.value!));
      }

      const result = await client
        .select()
        .from(govSetInterestRateModel)
        .where(and(...whereConditions))
        .orderBy(desc(govSetInterestRateModel.blockNumber))
        .limit(limit)
        .offset(offset);

      const totalCountResult = await client
        .select({ count: count() })
        .from(govSetInterestRateModel)
        .where(and(...whereConditions));

      return Response.json({
        events: result,
        count: result.length,
        totalCount: totalCountResult[0].count,
        limit,
        offset,
        timestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "GovSetInterestRateModel query failed");
    }
  });

  // Get governance parameter changes - GovSetLiquidationCoolOffTime
  app.get("/api/gov-set-liquidation-cool-off-time", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      const vaultAddressParam = c.req.query("vaultAddress");

      const whereConditions = [inArray(govSetLiquidationCoolOffTime.chainId, chainIds)];

      if (vaultAddressParam) {
        const addressValidation = validateAddress(vaultAddressParam);
        if (!addressValidation.success) {
          return errorResponse(addressValidation.error!);
        }
        whereConditions.push(eq(govSetLiquidationCoolOffTime.vaultAddress, addressValidation.value!));
      }

      const result = await client
        .select()
        .from(govSetLiquidationCoolOffTime)
        .where(and(...whereConditions))
        .orderBy(desc(govSetLiquidationCoolOffTime.blockNumber))
        .limit(limit)
        .offset(offset);

      const totalCountResult = await client
        .select({ count: count() })
        .from(govSetLiquidationCoolOffTime)
        .where(and(...whereConditions));

      return Response.json({
        events: result,
        count: result.length,
        totalCount: totalCountResult[0].count,
        limit,
        offset,
        timestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "GovSetLiquidationCoolOffTime query failed");
    }
  });

  // Get governance parameter changes - GovSetLtv
  app.get("/api/gov-set-ltv", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      const vaultAddressParam = c.req.query("vaultAddress");

      const whereConditions = [inArray(govSetLtv.chainId, chainIds)];

      if (vaultAddressParam) {
        const addressValidation = validateAddress(vaultAddressParam);
        if (!addressValidation.success) {
          return errorResponse(addressValidation.error!);
        }
        whereConditions.push(eq(govSetLtv.vaultAddress, addressValidation.value!));
      }

      const result = await client
        .select()
        .from(govSetLtv)
        .where(and(...whereConditions))
        .orderBy(desc(govSetLtv.blockNumber))
        .limit(limit)
        .offset(offset);

      const totalCountResult = await client
        .select({ count: count() })
        .from(govSetLtv)
        .where(and(...whereConditions));

      return Response.json({
        events: result,
        count: result.length,
        totalCount: totalCountResult[0].count,
        limit,
        offset,
        timestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "GovSetLtv query failed");
    }
  });

  // Get governance parameter changes - GovSetMaxLiquidationDiscount
  app.get("/api/gov-set-max-liquidation-discount", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      const paginationValidation = validatePagination(c.req.query("limit"), c.req.query("offset"));
      if (!paginationValidation.success) {
        return errorResponse(paginationValidation.error!);
      }
      const { limit, offset } = paginationValidation.value!;

      const vaultAddressParam = c.req.query("vaultAddress");

      const whereConditions = [inArray(govSetMaxLiquidationDiscount.chainId, chainIds)];

      if (vaultAddressParam) {
        const addressValidation = validateAddress(vaultAddressParam);
        if (!addressValidation.success) {
          return errorResponse(addressValidation.error!);
        }
        whereConditions.push(eq(govSetMaxLiquidationDiscount.vaultAddress, addressValidation.value!));
      }

      const result = await client
        .select()
        .from(govSetMaxLiquidationDiscount)
        .where(and(...whereConditions))
        .orderBy(desc(govSetMaxLiquidationDiscount.blockNumber))
        .limit(limit)
        .offset(offset);

      const totalCountResult = await client
        .select({ count: count() })
        .from(govSetMaxLiquidationDiscount)
        .where(and(...whereConditions));

      return Response.json({
        events: result,
        count: result.length,
        totalCount: totalCountResult[0].count,
        limit,
        offset,
        timestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "GovSetMaxLiquidationDiscount query failed");
    }
  });
}
