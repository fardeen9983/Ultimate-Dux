# Import the sqlite3 package
import sqlite3

# Connect to a database. Creates one if not present in memory
conn = sqlite3.connect("customer.db")

# Connection to a temporary db in memory that will be erased once the connection is removed
mem_conn = sqlite3.connect(":memory:")

# Create a cursor
c = conn.cursor()

# Create a table
c.execute("""CREATE TABLE customers(
    first_name text,
    last_name text,
    email text
    )
    """)
conn.commit()

# Closing the connection
conn.close()