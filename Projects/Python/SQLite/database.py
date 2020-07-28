import sqlite3

# Show all Customer records
def show_all():
    conn = sqlite3.connect("customer.db")
    c = conn.cursor()
    c.execute("SELECT * FROM customers")
    items = c.fetchall()
    for item in items:
        print(item)
    conn.commit()
    conn.close()

# Add a customer record
def add_customer(first,last,email):
    conn = sqlite3.connect("customer.db")
    c = conn.cursor()
    c.execute("INSERT INTO customers VALUES(?,?,?)",(first,last,email))
    conn.commit()
    conn.close()

def add_many_cust(rows):
    conn = sqlite3.connect("customer.db")
    c = conn.cursor()
    c.executemany("INSERT INTO customers VALUES(?,?,?)",rows)
    conn.commit()
    conn.close()

# Delete a record
def delete_customer(id):
    conn = sqlite3.connect("customer.db")
    c = conn.cursor()
    c.execute("DELETE FROM customers WHERE rowid = (?)",id)
    conn.commit()
    conn.close()

# Lookup by email
def email_lookup(email):
    conn = sqlite3.connect("customer.db")
    c = conn.cursor()
    c.execute("SELECT * FROM customers WHERE email = (?)",(email,))
    print(c.fetchall())
    conn.commit()
    conn.close()