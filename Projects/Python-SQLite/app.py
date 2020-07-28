import database

database.show_all()
database.add_customer("Demo","Istan","demo@gmail.com")
database.delete_customer(2)
rows = [
            ('Pablo','Escobar','pablo@gmail.com'),
            ('Diablo','Senu','diablo@gmail.com'),
            ('Boss','Baby','baby@gmail.com')
       ]
database.add_many_cust(rows)
database.show_all()
database.email_lookup("baby@gmail.com")