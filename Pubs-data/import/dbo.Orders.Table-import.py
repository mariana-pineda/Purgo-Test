
import os
import sys
import csv
import pyodbc
import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.engine import URL

if len(sys.argv) != 6:
    sys.exit(f"Usage: {sys.argv[0]} token server path catalog schema")

urlString = "databricks://token:{sys.argv[1]}@{sys.argv[2]}:443?http_path={sys.argv[3]}&catalog={sys.argv[4]}&schema={sys.argv[5]}", echo=True
engine = create_engine(urlString)

df = pd.read_csv("Orders.csv")
df.to_sql("Orders", dbengine, if_exists='replace', index=False)
