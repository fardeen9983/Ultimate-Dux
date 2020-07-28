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

# Add data one row at a time
c.execute("INSERT INTO customers VALUES('Fardeen', 'Khan', 'ezio@gmail.com')")

# Add multiple records at once
rows = [
            ('Pablo','Escobar','pablo@gmail.com'),
            ('Diablo','Senu','diablo@gmail.com'),
            ('Boss','Baby','baby@gmail.com')
       ]
# Execute many inert commands together
c.executemany("INSERT INTO customers VALUES(?,?,?)",rows) 

# Query data
# Note - keep in mind that running a fetch commond moves the cursor position in the table and already fetched rows are omitted from being fetched again from the same cursor

c.execute("SELECT * FROM customers")

# Returns first record
one = c.fetchone()
print(one)

# Returns multiple records
many = c.fetchmany(3)
print(many)

# Returns all records
all = c.fetchall()
print(all)

# Query data with default primary key
c.execute("SELECT rowid,* FROM customers")
items = c.fetchall()

for item in items:
    print(item)

# Where clause
c.execute("SELECT * FROM customers where last_name = 'Khan'")
print(c.fetchall())

c.execute("SELECT * FROM customers where last_name LIKE '%b%'")
print(c.fetchall())

# Update Records
c.execute("""UPDATE customers SET first_name = 'Peble' 
            WHERE last_name LIKE 'Esc%'
        """)

# Delete records
c.execute("DELETE FROM customers where rowid=3")

# Order by
# Ascending
c.execute("SELECT rowid, * FROM customers ORDER BY email")
print(c.fetchall())
# Descending
c.execute("SELECT rowid, * FROM customers ORDER BY email DESC")
print(c.fetchall())

# Commit your changes
conn.commit()

# Closing the connection
conn.close()