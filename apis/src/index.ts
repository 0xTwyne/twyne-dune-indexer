import { App, middlewares } from "@duneanalytics/sim-idx";
import { registerHealthRoutes } from "./routes/health";
import { registerChainlinkRoutes } from "./routes/chainlink";
import { registerProtocolStatsRoutes } from "./routes/protocolStats";
import { registerEVaultRoutes } from "./routes/evaults";
import { registerCollateralVaultRoutes } from "./routes/collateralVaults";
import { registerGovernanceRoutes } from "./routes/governance";

const app = App.create();
app.use("*", middlewares.authentication);

// Register all route modules
registerHealthRoutes(app);
registerChainlinkRoutes(app);
registerProtocolStatsRoutes(app);
registerEVaultRoutes(app);
registerCollateralVaultRoutes(app);
registerGovernanceRoutes(app);

export default app;
