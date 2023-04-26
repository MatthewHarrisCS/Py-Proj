import sqlite3 as sql

# Create the database (if needed) and connect to it
con = sql.connect("sqlite.db")
cur = con.cursor()

# Read the SQL file into the SQLite database 
f = open("build.sql","r")
str = f.read()
cur.executescript(str)
f.close()

# Commit the changes to the database
con.commit()