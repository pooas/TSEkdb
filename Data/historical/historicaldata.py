import pytse_client as tse
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt

symbols = ["اهرم", "خودرو"]

def dataDownload(symbol):
    tickers = tse.download(symbols=symbol, write_to_csv=True)
    df = tickers[symbol]
    df = df.set_index('date')
    df = df.rename(columns={'date':'Date','open': 'Open', 'high':'High','low':'Low', 'volume':'Volume', 'adjClse':'Close'})
    df = df.drop(['value', 'count','yesterday', 'close'], axis=1)
    return df


for sym in symbols:
    data = dataDownload(sym)
    data.to_csv(f"{sym}.csv", index=False)
