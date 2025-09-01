# Twyne Dune Indexer

This is a Dune Indexer for the Twyne protocol. It is built using the Sim IDX framework and provides access to indexed blockchain data related to collateral vaults, liquidations, and vault metrics.

## Getting Started

To build the indexer, run the following command:
```bash
sim build
```

To test a listener, use:
```bash
sim listeners evaluate --chain-id 1 --start-block 23248031
```

To run the API locally, follow the steps in the [local development setup guide](https://docs.sim.dune.com/idx/apis#local-development-setup).
