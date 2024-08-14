
import sys
import csv
import pyodbc
import pandas as pd
from sqlalchemy import create_engine

if len(sys.argv) != 5:
    sys.exit(f"Usage: {sys.argv[0]} server datatabase user password")

connectionString = f"Server=tcp:{sys.argv[1]},1433;Database={sys.argv[2]};Uid={sys.argv[3]};Pwd={sys.argv[4]};Encrypt=yes;TrustServerCertificate=no;Connection Timeout=30;"
engine = create_engine("mssql+pyodbc:///?odbc_connect=Driver={ODBC Driver 18 for SQL Server};" + connectionString)
df = pd.read_sql('select * from Orders', engine)
df.to_csv("Orders.csv", index=False)
