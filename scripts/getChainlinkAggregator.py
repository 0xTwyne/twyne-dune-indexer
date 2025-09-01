from ape import Contract

def getAggregator(vault, is_credit=False):
    vault = Contract(vault)
    if is_credit:
        vault = Contract(vault.asset())
    oracle = Contract(vault.oracle())
    conf = Contract(oracle.getConfiguredOracle(vault.asset(), vault.unitOfAccount()))
    try:
        feed = Contract(conf.feed())
    except Exception as e:
        print(e)
        crossQuote = Contract(conf.oracleCrossQuote())
        feed = Contract(crossQuote.feed())
    aggregator = Contract(feed.aggregator())
    return aggregator