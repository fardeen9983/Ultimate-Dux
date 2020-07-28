# Import the sqlite3 package
import sqlite3

# Connect to a database. Creates one if not present in memory
conn = sqlite3.connect("customer.db")

# Connection to a temporary db in memory that will be erased once the connection is removed
mem_conn = sqlite3.connect(":memory:")

# Create a cursor
c = conn.cursor()

# Create a table
# c.execute("""CREATE TABLE customers(
#     first_name text,
#     last_name text,
#     email text
#     )
#     """)

# Add data one row at a time
# c.execute("INSERT INTO customers VALUES('Fardeen', 'Khan', 'ezio@gmail.com')")

# Add multiple records at once
rows = [
            ('Pablo','Escobar','pablo@gmail.com'),
            ('Diablo','Senu','diablo@gmail.com'),
            ('Boss','Baby','baby@gmail.com')
       ]
# Execute many inert commands together
c.executemany("INSERT INTO customers VALUES(?,?,?)",rows)
conn.commit()

# Closing the connection
conn.close()