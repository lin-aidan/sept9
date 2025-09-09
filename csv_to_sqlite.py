import pandas as pd
import sqlite3

def csv_to_sqlite(csv_path, db_path, table_name):
    df = pd.read_csv(csv_path)
    conn = sqlite3.connect(db_path)
    df.to_sql(table_name, conn, if_exists='replace', index=False)
    conn.close()

if __name__ == "__main__":
    csv_to_sqlite("BUF_Bills_2024.csv", "bills.db", "bills")
