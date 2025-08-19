import { eq, desc, sql, count } from "drizzle-orm";
import { 
  vaultCreated, 
} from "./db/schema/Listener";
import { types, db, App, middlewares } from "@duneanalytics/sim-idx";

const app = App.create();
app.use("*", middlewares.authentication);

// Get all created vaults with pagination
app.get("/api/vaults", async (c) => {
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

// Health check endpoint
app.get("/api/health", async (c) => {
  try {
    const client = db.client(c);
    
    // Test database connection
    const testQuery = await client.select({ count: count() }).from(vaultCreated);
    
    return Response.json({ 
      status: "healthy", 
      timestamp: new Date().toISOString(),
      totalVaults: testQuery[0].count
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