import sqlite3 as sql
import tkinter as tk
import tkinter.ttk as tt
import datetime as dt

# Connect to the SQLite Database
con = sql.connect("sqlite.db")
db = []
days = [*range(1,13)]
months = [*range(1,32)]
years = [*range(1900, dt.date.today().year + 1)]
genderValues = {'M', 'F', 'X'}

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

def submit_person():
    con.cursor().execute("INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) VALUES (?, ?, ?, ?, ?);", \
                        (subLName.get(), subFName.get(), genderVal.get(), \
                        yearDOB.get() + "-" + monDOB.get() + "-" + dayDOB.get(), \
                        yearDOD.get() + "-" + monDOD.get() + "-" + dayDOD.get()))
    con.commit()
    print_persons()

# Window elements
window = tk.Tk()
window.title("Python SQLite Project")
submit = tt.Frame(master=window)
table = tt.Frame(master=window)

# Populate the initial database
print_persons()

# Submit frame
    ## First name entry
subLabelFName = tt.Label(master=submit, text="First Name: ")
subLabelFName.grid(row=0, column=0)
subFName = tt.Entry(master=submit, width=18)
subFName.grid(row=0, column=1)

    ## Last name entry
subLabelLName = tt.Label(master=submit, text="Last Name: ")
subLabelLName.grid(row=1, column=0)
subLName = tt.Entry(master=submit, width=18)
subLName.grid(row=1, column=1)

    ## Gender entry
subLabelGender = tt.Label(master=submit, text="Last Name: ")
subLabelGender.grid(row=2, column=0)
subGender = tt.Frame(master=submit)
genderVal = tk.StringVar()

maleRadio = tt.Radiobutton(master=subGender, variable=genderVal, text="Male", value='M')
maleRadio.grid(row=0, column=0)
femaleRadio = tt.Radiobutton(master=subGender, variable=genderVal, text="Female", value='F')
femaleRadio.grid(row=0, column=1)
otherRadio = tt.Radiobutton(master=subGender, variable=genderVal, text="Other", value='X')
otherRadio.grid(row=0, column=2)

subGender.grid(row=2, column=1)

    ## Date of Birth entry
subLabelDOB= tt.Label(master=submit, text="Date of Birth: ")
subLabelDOB.grid(row=3, column=0)
subDOB = tt.Frame(master=submit)

dayDOB = tt.Combobox(master=subDOB, state="readonly", values=days, width=2)
dayDOB.current(0)
dayDOB.grid(row=0, column=0)

monDOB = tt.Combobox(master=subDOB, state="readonly", values=months, width=2)
monDOB.current(0)
monDOB.grid(row=0, column=1)

yearDOB = tt.Combobox(master=subDOB, state="readonly", values=years, width=4)
yearDOB.current(0)
yearDOB.grid(row=0, column=2)

subDOB.grid(row=3, column=1)

    ## Date of Death entry
subLabelDOD= tt.Label(master=submit, text="Date of Death: ")
subLabelDOD.grid(row=4, column=0)
subDOD = tt.Frame(master=submit)

dayDOD = tt.Combobox(master=subDOD, state="readonly", values=days, width=2)
dayDOD.current(0)
dayDOD.grid(row=0, column=0)

monDOD = tt.Combobox(master=subDOD, state="readonly", values=months, width=2)
monDOD.current(0)
monDOD.grid(row=0, column=1)

yearDOD = tt.Combobox(master=subDOD, state="readonly", values=years, width=4)
yearDOD.current(0)
yearDOD.grid(row=0, column=2)

subDOD.grid(row=4, column=1)

button = tt.Button(master=window, text="Submit", command=submit_person)

# Result frame
    ## ID
headerID = tt.Frame(master=table)
headerID.grid(row=0, column=0, padx=20, pady=10)
resLabelID = tt.Label(master=headerID, text="ID")
resLabelID.pack()

    ## Name
headerName = tt.Frame(master=table)
headerName.grid(row=0, column=1, padx=20, pady=10)
resLabelName = tt.Label(master=headerName, text="Name")
resLabelName.pack()

    ## Gender
headerGender = tt.Frame(master=table)
headerGender.grid(row=0, column=2, padx=20, pady=10)
resLabelGender = tt.Label(master=headerGender, text="Gender")
resLabelGender.pack()

    ## Date of Birth
headerDOB = tt.Frame(master=table)
headerDOB.grid(row=0, column=3, padx=20, pady=10)
resLabelDOB = tt.Label(master=headerDOB, text="Date of Birth")
resLabelDOB.pack()

    ## Date of Death
headerDOD = tt.Frame(master=table)
headerDOD.grid(row=0, column=4, padx=20, pady=10)
resLabelDOD = tt.Label(master=headerDOD, text="Date of Death")
resLabelDOD.pack()

# Pack the window
submit.pack()
table.pack()
button.pack()
button2.pack()

# Running the window
window.mainloop()