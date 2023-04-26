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
        headerA = tt.Frame(master=table, border=1, borderwidth=1)
        headerA.grid(row=i+1, column=0)
        hALabel = tt.Label(master=headerA, text=db[i][0])
        hALabel.pack()

        headerB = tt.Frame(master=table, border=1, borderwidth=1)
        headerB.grid(row=i+1, column=1)
        hBLabel = tt.Label(master=headerB, text=db[i][2] + " " + db[i][1])
        hBLabel.pack()
        
        headerC = tt.Frame(master=table, border=1, borderwidth=1)
        headerC.grid(row=i+1, column=2)
        labelC = tt.Label(master=headerC, text=db[i][3])
        labelC.pack()

        headerD = tt.Frame(master=table, border=1, borderwidth=1)
        headerD.grid(row=i+1, column=3)
        labelD = tt.Label(master=headerD, text=db[i][4])
        labelD.pack()
        
        headerE = tt.Frame(master=table, border=1, borderwidth=1)
        headerE.grid(row=i+1, column=4)
        labelE = tt.Label(master=headerE, text=db[i][5])
        labelE.pack()

# Window elements
window = tk.Tk(className="Python SQLite Project")
table = tt.Frame(master=window)
button1 = tt.Button(master=window, text="Submit", command=print_persons)

# Result frame
    ## ID
headerID = tt.Frame(master=table)
headerID.grid(row=0, column=0, padx=20, pady=10)
labelID = tt.Label(master=headerID, text="ID")
labelID.pack()

    ## Name
headerName = tt.Frame(master=table)
headerName.grid(row=0, column=1, padx=20, pady=10)
labelName = tt.Label(master=headerName, text="Name")
labelName.pack()

    ## Gender
headerGender = tt.Frame(master=table)
headerGender.grid(row=0, column=2, padx=20, pady=10)
labelGender = tt.Label(master=headerGender, text="Gender")
labelGender.pack()

    ## Date of Birth
headerDOB = tt.Frame(master=table)
headerDOB.grid(row=0, column=3, padx=20, pady=10)
labelDOB = tt.Label(master=headerDOB, text="Date of Birth")
labelDOB.pack()

    ## Date of Death
headerDOD = tt.Frame(master=table)
headerDOD.grid(row=0, column=4, padx=20, pady=10)
labelDOD = tt.Label(master=headerDOD, text="Date of Death")
labelDOD.pack()

# Pack the window
button1.pack()
table.pack()

# Running the window
window.mainloop()