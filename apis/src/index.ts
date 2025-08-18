import { eq, desc, sql, count } from "drizzle-orm";
import { 
  vaultCreated, 
  vaultDeposit, 
  vaultDepositUnderlying,
  vaultWithdraw, 
  vaultBorrow, 
  vaultRepay, 
  vaultTeleport 
} from "./db/schema/Listener";
import { types, db, App, middlewares } from "@duneanalytics/sim-idx";

const app = App.create();
app.use("*", middlewares.authentication);

// Get all created vaults with pagination
app.get("/vaults", async (c) => {
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

// Get vault by address with summary stats
app.get("/vaults/:address", async (c) => {
  try {
    const client = db.client(c);
    const vaultAddress = types.Address.from(c.req.param("address"));
    
    const vault = await client
      .select()
      .from(vaultCreated)
      .where(eq(vaultCreated.vaultAddress, vaultAddress))
      .limit(1);

    if (vault.length === 0) {
      return Response.json({ error: "Vault not found" }, { status: 404 });
    }

    // Get activity counts for this vault
    const [depositCount, withdrawCount, borrowCount, repayCount] = await Promise.all([
      client.select({ count: count() }).from(vaultDeposit).where(eq(vaultDeposit.vaultAddress, vaultAddress)),
      client.select({ count: count() }).from(vaultWithdraw).where(eq(vaultWithdraw.vaultAddress, vaultAddress)),
      client.select({ count: count() }).from(vaultBorrow).where(eq(vaultBorrow.vaultAddress, vaultAddress)),
      client.select({ count: count() }).from(vaultRepay).where(eq(vaultRepay.vaultAddress, vaultAddress))
    ]);

    return Response.json({ 
      vault: vault[0],
      stats: {
        depositCount: depositCount[0].count,
        withdrawCount: withdrawCount[0].count,
        borrowCount: borrowCount[0].count,
        repayCount: repayCount[0].count
      }
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

// Get all activities for a specific vault
app.get("/vaults/:address/activities", async (c) => {
  try {
    const client = db.client(c);
    const vaultAddress = types.Address.from(c.req.param("address"));
    const limit = Math.min(parseInt(c.req.query("limit") || "50"), 100);
    const offset = parseInt(c.req.query("offset") || "0");
    
    // Get deposits
    const deposits = await client
      .select({
        type: sql<string>`'deposit'`,
        amount: vaultDeposit.amount,
        user: vaultDeposit.userAddress,
        blockNumber: vaultDeposit.blockNumber,
        blockTimestamp: vaultDeposit.blockTimestamp,
        txnHash: vaultDeposit.txnHash
      })
      .from(vaultDeposit)
      .where(eq(vaultDeposit.vaultAddress, vaultAddress))
      .orderBy(desc(vaultDeposit.blockTimestamp))
      .limit(limit)
      .offset(offset);

    // Get withdrawals  
    const withdrawals = await client
      .select({
        type: sql<string>`'withdraw'`,
        amount: vaultWithdraw.amount,
        user: vaultWithdraw.userAddress,
        blockNumber: vaultWithdraw.blockNumber,
        blockTimestamp: vaultWithdraw.blockTimestamp,
        txnHash: vaultWithdraw.txnHash
      })
      .from(vaultWithdraw)
      .where(eq(vaultWithdraw.vaultAddress, vaultAddress))
      .orderBy(desc(vaultWithdraw.blockTimestamp))
      .limit(limit)
      .offset(offset);

    // Get borrows
    const borrows = await client
      .select({
        type: sql<string>`'borrow'`,
        amount: vaultBorrow.targetAmount,
        user: vaultBorrow.borrowerAddress,
        blockNumber: vaultBorrow.blockNumber,
        blockTimestamp: vaultBorrow.blockTimestamp,
        txnHash: vaultBorrow.txnHash
      })
      .from(vaultBorrow)
      .where(eq(vaultBorrow.vaultAddress, vaultAddress))
      .orderBy(desc(vaultBorrow.blockTimestamp))
      .limit(limit)
      .offset(offset);

    // Combine and sort all activities
    const allActivities = [...deposits, ...withdrawals, ...borrows]
      .sort((a, b) => Number(b.blockTimestamp - a.blockTimestamp))
      .slice(0, limit);

    return Response.json({
      vaultAddress: vaultAddress,
      activities: allActivities,
      count: allActivities.length,
      limit,
      offset
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

// Get activities by user
app.get("/users/:address/activities", async (c) => {
  try {
    const client = db.client(c);
    const userAddress = types.Address.from(c.req.param("address"));
    const limit = Math.min(parseInt(c.req.query("limit") || "50"), 100);
    const offset = parseInt(c.req.query("offset") || "0");
    
    // Get user deposits
    const deposits = await client
      .select({
        type: sql<string>`'deposit'`,
        vault: vaultDeposit.vaultAddress,
        amount: vaultDeposit.amount,
        blockNumber: vaultDeposit.blockNumber,
        blockTimestamp: vaultDeposit.blockTimestamp,
        txnHash: vaultDeposit.txnHash
      })
      .from(vaultDeposit)
      .where(eq(vaultDeposit.userAddress, userAddress))
      .orderBy(desc(vaultDeposit.blockTimestamp))
      .limit(limit)
      .offset(offset);

    // Get user withdrawals
    const withdrawals = await client
      .select({
        type: sql<string>`'withdraw'`,
        vault: vaultWithdraw.vaultAddress,
        amount: vaultWithdraw.amount,
        blockNumber: vaultWithdraw.blockNumber,
        blockTimestamp: vaultWithdraw.blockTimestamp,
        txnHash: vaultWithdraw.txnHash
      })
      .from(vaultWithdraw)
      .where(eq(vaultWithdraw.userAddress, userAddress))
      .orderBy(desc(vaultWithdraw.blockTimestamp))
      .limit(limit)
      .offset(offset);

    // Get user borrows
    const borrows = await client
      .select({
        type: sql<string>`'borrow'`,
        vault: vaultBorrow.vaultAddress,
        amount: vaultBorrow.targetAmount,
        blockNumber: vaultBorrow.blockNumber,
        blockTimestamp: vaultBorrow.blockTimestamp,
        txnHash: vaultBorrow.txnHash
      })
      .from(vaultBorrow)
      .where(eq(vaultBorrow.borrowerAddress, userAddress))
      .orderBy(desc(vaultBorrow.blockTimestamp))
      .limit(limit)
      .offset(offset);

    // Combine and sort all activities
    const allActivities = [...deposits, ...withdrawals, ...borrows]
      .sort((a, b) => Number(b.blockTimestamp - a.blockTimestamp))
      .slice(0, limit);

    return Response.json({
      userAddress: userAddress,
      activities: allActivities,
      count: allActivities.length,
      limit,
      offset
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

// Get vault creation events by creator
app.get("/creators/:address/vaults", async (c) => {
  try {
    const client = db.client(c);
    const creatorAddress = types.Address.from(c.req.param("address"));
    
    const vaults = await client
      .select()
      .from(vaultCreated)
      .where(eq(vaultCreated.creator, creatorAddress))
      .orderBy(desc(vaultCreated.blockTimestamp));

    return Response.json({
      creator: creatorAddress,
      vaults: vaults,
      count: vaults.length
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

// Get overall statistics
app.get("/stats", async (c) => {
  try {
    const client = db.client(c);

    const [
      totalVaults,
      totalDeposits,
      totalWithdrawals,
      totalBorrows,
      totalRepays,
      totalTeleports,
    ] = await Promise.all([
      client.select({ count: count() }).from(vaultCreated),
      client.select({ count: count() }).from(vaultDeposit),
      client.select({ count: count() }).from(vaultWithdraw),
      client.select({ count: count() }).from(vaultBorrow),
      client.select({ count: count() }).from(vaultRepay),
      client.select({ count: count() }).from(vaultTeleport),
    ]);

    return Response.json({
      totalVaults: totalVaults[0]?.count || 0,
      totalDeposits: totalDeposits[0]?.count || 0,
      totalWithdrawals: totalWithdrawals[0]?.count || 0,
      totalBorrows: totalBorrows[0]?.count || 0,
      totalRepays: totalRepays[0]?.count || 0,
      totalTeleports: totalTeleports[0]?.count || 0,
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

// Health check endpoint
app.get("/health", async (c) => {
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