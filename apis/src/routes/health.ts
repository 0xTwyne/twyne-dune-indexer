import { App, db } from "@duneanalytics/sim-idx";
import { count, inArray } from "drizzle-orm";
import { vaultCreated, vaultMetrics } from "../db/schema/Listener";
import { parseChainIds } from "../utils/chainIds";

export function registerHealthRoutes(app: ReturnType<typeof App.create>) {
  app.get("/api/health", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      // Test database connection
      const testQuery = await client
        .select({ count: count() })
        .from(vaultCreated)
        .where(inArray(vaultCreated.chainId, chainIds));

      const metricsQuery = await client
        .select({ count: count() })
        .from(vaultMetrics)
        .where(inArray(vaultMetrics.chainId, chainIds));

      return Response.json({
        status: "healthy",
        timestamp: new Date().toISOString(),
        totalVaults: testQuery[0].count,
        totalMetricsRecords: metricsQuery[0].count,
        chainIds: chainIds.map(id => id.toString()),
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
}
