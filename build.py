import sqlite3 as sql

# Create the database (if needed) and create the tables
con = sql.connect("sqlite.db")
cur = con.cursor()
cur.execute("DROP TABLE IF EXISTS person")
cur.execute(\
    "CREATE TABLE person (\
        userID INTEGER PRIMARY KEY,\
        first_name VARCHAR(32),\
        last_name VARCHAR(32)\
    )")

# TEMP - Test entries
cur.execute(\
    "INSERT INTO person (first_name, last_name) \
        VALUES ('Bruce', 'Wayne')")
cur.execute(\
    "INSERT INTO person (first_name, last_name) \
        VALUES ('Barry', 'Allen')")
cur.execute(\
    "INSERT INTO person (first_name, last_name) \
        VALUES ('Kara', 'Zor-El')")

con.commit()