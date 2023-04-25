import sqlite3 as sql
import tkinter as tk
import tkinter.ttk as tt

# Connect to the SQLite Database
con = sql.connect("sqlite.db")
db = []

# Functions
def print_persons():
    db = con.cursor().execute("SELECT * FROM person").fetchall()
    for i in range(len(db)):
        print(db[i][2])
        headerA = tt.Frame(master=table)
        headerA.grid(row=i+1, column=0)
        hALabel = tt.Label(master=headerA, text=db[i][0])
        hALabel.pack()

        headerB = tt.Frame(master=table)
        headerB.grid(row=i+1, column=1)
        hBLabel = tt.Label(master=headerB, text=db[i][1] + " " + db[i][2])
        hBLabel.pack()

# Window elements
window = tk.Tk(className="Python SQLite Project")
table = tt.Frame(master=window)
button1 = tt.Button(master=window, text="Submit", command=print_persons)

# Result frame
header1 = tt.Frame(master=table)
header1.grid(row=0, column=0)
h1Label = tt.Label(master=header1, text="ID")
h1Label.pack()

header2 = tt.Frame(master=table)
header2.grid(row=0, column=1)
h2Label = tt.Label(master=header2, text="Name")
h2Label.pack()

# Pack the window
button1.pack()
table.pack()

# Running the window
window.mainloop()