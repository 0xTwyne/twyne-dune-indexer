import { App, db } from "@duneanalytics/sim-idx";
import { desc, inArray } from "drizzle-orm";
import { answerUpdated } from "../db/schema/Listener";
import { parseChainIds } from "../utils/chainIds";
import { serverError } from "../utils/errors";

export function registerChainlinkRoutes(app: ReturnType<typeof App.create>) {
  // Get latest 5 answerUpdated events
  app.get("/api/chainlink/latest-answers", async (c) => {
    try {
      const client = db.client(c);
      const chainIds = parseChainIds(c.req.query("chainIds"));

      const latestAnswers = await client
        .select()
        .from(answerUpdated)
        .where(inArray(answerUpdated.chainId, chainIds))
        .orderBy(desc(answerUpdated.blockTimestamp))
        .limit(5);

      return Response.json({
        latestAnswers,
        count: latestAnswers.length,
        timestamp: new Date().toISOString()
      });
    } catch (e) {
      return serverError(e as Error, "Failed to fetch latest Chainlink answers");
    }
  });
}
