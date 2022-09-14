#!/Library/Frameworks/Python.framework/Versions/3.8/bin/Python3
#Modules
import tkinter as tk
from tkinter.font import Font
import random

#Variables and globals and else
password = 0

#Task Name
Donut = tk.Tk()
#Window Title
Donut.title("Donut Toppings")

#Toolbar
def Toolbar():
    global menu, bar, barz
    bar = tk.Menu(Donut)
    Donut.config(menu=bar)
    barz = tk.Menu(bar)
    bar.add_cascade(label="Hi", menu=barz)
    barz.add_command(label="Person", command=stupid)
    if password == 3:
        barz.add_command(label="", command=password1)

def stupid():
    global password, stoopid
    password += 1
    forgetcri()
    forgetim()
    forgethome()
    try:
        textitle.place_forget()
        loc.place_forget()
        timmies.place_forget()
        crisp.place_forget()
        home.place_forget()
    except NameError:
        pass
    stoopid = tk.Label(Donut, text="You're a fuckin' moron innit? shtupid, Meet me on chewsday to scrap mate.")
    stopidfont = Font(size="15")
    stoopid.configure(font=stopidfont, bg="pink", fg="black")
    stoopid.place(anchor="n", y=150, x=300)
    stupid3()

    emenuel = tk.Menu(Donut)
    Donut.config(menu=emenuel)
    emanual = tk.Menu(emenuel)
    emenuel.add_cascade(label="Click", menu=emanual)
    emanual.add_command(label="Clack", command=stupid2)

def stupid2():
    try:
        stoopid.place_forget()
    except NameError:
        pass
    words()
    Toolbar()
    location()
    
#Text-title
def words():
    global textitle
    textitle = tk.Label(Donut, text="Donut Toppings")
    textfont = Font(family="Chalkboard", size="30")
    textitle.configure(font=textfont, bg="pink", fg="white")
    textitle.place(x=300, anchor="n")

#Background
Donut.configure(bg="pink")

#Window Size
width = (Donut.winfo_screenwidth()-600) // 2
Donut.geometry(f"600x600+{width}+0")

#location
def location():
    global loc, timmies, crisp, home
    locfont = Font(family="Chalkboard", size="15")
    loc = tk.Label(Donut, text="Where are you getting this donut from?")
    loc.configure(font=locfont, bg="pink", fg="purple")
    loc.place(x=300, y=50, anchor="n")
    timmies = tk.Button(Donut, text="From Tim Hortons", command=tims)
    timmies.configure(font=locfont, bg="pink", fg="purple")
    timmies.place(x=100, y=80, anchor="n")
    crisp = tk.Button(Donut, text="From Krispy Kreme", command=krispy)
    crisp.configure(font=locfont, bg="pink", fg="purple")
    crisp.place(x=300, y=80, anchor="n")
    home = tk.Button(Donut, text="I'm making them", command=maison)
    home.configure(font=locfont, bg="pink", fg="purple")
    home.place(x=500, y=80, anchor="n")

def tims():
    #else
    global timtype, timchecks
    global t1v, t2v, t3v, t4v, t5v, t6v, t7v, t8v, t9v, t10v, t11v, t12v, t13v
    global t14v, t15v, t16v, t17v
    global tim1, tim2, tim3, tim4, tim5, tim6, tim7, tim8, tim9, tim10, tim11
    global tim12, tim13, tim14, tim15, tim16, tim17
    
    
    #disabling everything else
    forgetcri()
    forgethome()
    timmies.config(state="disabled")
    crisp.config(state="normal")
    home.config(state="normal")

    #working the buttons
    timfont = Font(family="Chalkboard", size="15")
    timtype = tk.Button(Donut, text="Tim Hortons Donut", command=donots)
    timtype.place(x=300, y=140, anchor="n")
    timtype.configure(font=timfont, bg="white", fg="red")
    timchecks = tk.Label(Donut, text="Options")
    timchecks.configure(font="Chalkboard 25 underline", bg="pink", fg="red")
    timchecks.place(x=300, y=210, anchor="n")
    ran()

    #checkboxes
    t1v = tk.IntVar()
    tim1 = tk.Checkbutton(Donut, text="Apple Fritter", variable=t1v)
    tim1.configure(font=timfont, bg="pink", fg="red")
    tim1.select()
    tim1.place(x=35, y=245, anchor="nw")
    t2v = tk.IntVar()
    tim2 = tk.Checkbutton(Donut, text="Chocolate Dip", variable=t2v)
    tim2.configure(font=timfont, bg="pink", fg="red")
    tim2.select()
    tim2.place(x=230, y=245, anchor="nw")
    t3v = tk.IntVar()
    tim3 = tk.Checkbutton(Donut, text="Honey Dip", variable=t3v)
    tim3.configure(font=timfont, bg="pink", fg="red")
    tim3.select()
    tim3.place(x=440, y=245, anchor="nw")
    t4v = tk.IntVar()
    tim4 = tk.Checkbutton(Donut, text="Vanilla Dip", variable=t4v)
    tim4.configure(font=timfont, bg="pink", fg="red")
    tim4.select()
    tim4.place(x=35, y=275, anchor="nw")
    t5v = tk.IntVar()
    tim5 = tk.Checkbutton(Donut, text="Maple Dip", variable=t5v)
    tim5.configure(font=timfont, bg="pink", fg="red")
    tim5.select()
    tim5.place(x=230, y=275, anchor="nw")
    t6v = tk.IntVar()
    tim6 = tk.Checkbutton(Donut, text="Chocolate Glazed", variable=t6v)
    tim6.configure(font=timfont, bg="pink", fg="red")
    tim6.select()
    tim6.place(x=440, y=275, anchor="nw")
    t7v = tk.IntVar()
    tim7 = tk.Checkbutton(Donut, text="Double Chocolate", variable=t7v)
    tim7.configure(font=timfont, bg="pink", fg="red")
    tim7.select()
    tim7.place(x=35, y=305, anchor="nw")
    t8v = tk.IntVar()
    tim8 = tk.Checkbutton(Donut, text="Old Fashion Plain", variable=t8v)
    tim8.configure(font=timfont, bg="pink", fg="red")
    tim8.select()
    tim8.place(x=230, y=305, anchor="nw")
    t9v = tk.IntVar()
    tim9 = tk.Checkbutton(Donut, text="Old Fashion Glazed", variable=t9v)
    tim9.configure(font=timfont, bg="pink", fg="red")
    tim9.select()
    tim9.place(x=440, y=305, anchor="nw")
    t10v = tk.IntVar()
    tim10 = tk.Checkbutton(Donut, text="Sour Cream Plain", variable=t10v)
    tim10.configure(font=timfont, bg="pink", fg="red")
    tim10.select()
    tim10.place(x=35, y=335, anchor="nw")
    t11v = tk.IntVar()
    tim11 = tk.Checkbutton(Donut, text="Strawberry Vanilla", variable=t11v)
    tim11.configure(font=timfont, bg="pink", fg="red")
    tim11.select()
    tim11.place(x=230, y=335, anchor="nw")
    t12v = tk.IntVar()
    tim12 = tk.Checkbutton(Donut, text="Strawberry", variable=t12v)
    tim12.configure(font=timfont, bg="pink", fg="red")
    tim12.select()
    tim12.place(x=440, y=335, anchor="nw")
    t13v = tk.IntVar()
    tim13 = tk.Checkbutton(Donut, text="Boston Cream", variable=t13v)
    tim13.configure(font=timfont, bg="pink", fg="red")
    tim13.select()
    tim13.place(x=35, y=365, anchor="nw")
    t14v = tk.IntVar()
    tim14 = tk.Checkbutton(Donut, text="Canadian Maple", variable=t14v)
    tim14.configure(font=timfont, bg="pink", fg="red")
    tim14.select()
    tim14.place(x=230, y=365, anchor="nw")
    t15v = tk.IntVar()
    tim15 = tk.Checkbutton(Donut, text="Sour Cream Glazed", variable=t15v)
    tim15.configure(font=timfont, bg="pink", fg="red")
    tim15.select()
    tim15.place(x=440, y=365, anchor="nw")
    t16v = tk.IntVar()
    tim16 = tk.Checkbutton(Donut, text="Honey Cruller", variable=t16v)
    tim16.configure(font=timfont, bg="pink", fg="red")
    tim16.select()
    tim16.place(x=35, y=395, anchor="nw")
    t17v = tk.IntVar()
    tim17 = tk.Checkbutton(Donut, text="Blueberry", variable=t17v)
    tim17.configure(font=timfont, bg="pink", fg="red")
    tim17.select()
    tim17.place(x=230, y=395, anchor="nw")

def krispy():
    #else
    global k1v, k2v, k3v, k4v, k5v, k6v, k7v, k8v, k9v, k10v, k11v, k12v, k13v
    global k14v, k15v, k16v, k17v, k18v, k19v, k20v, k21v, k22v, k23v, k24v
    global krm1, krm2, krm3, krm4, krm5, krm6, krm7, krm8, krm9, krm10, krm11
    global krm12, krm13, krm14, krm15, krm16, krm17, krm18, krm19, krm20, krm21
    global krm22, krm23, krm24
    global cripplecream, crippledchecks
    

    #disabling everything else
    forgetim()
    forgethome()
    crisp.config(state="disabled")
    timmies.config(state="normal")
    home.config(state="normal")

    #Working The Buttons
    crippledfont = Font(family="Chalkboard", size="15")
    cripplecream = tk.Button(Donut, text="Krispy Kreme Donuts", command=cronuts)
    cripplecream.place(x=300, y=140, anchor="n")
    cripplecream.configure(font=crippledfont, bg="green", fg="red")
    crippledchecks = tk.Label(Donut, text="Options")
    crippledchecks.configure(font="Chalkboard 25 underline", bg="pink", fg="red")
    crippledchecks.place(x=300, y=210, anchor="n")
    ran()

    #Checkboxes
    k1v = tk.IntVar()
    krm1 = tk.Checkbutton(Donut, text="Original Glazed", variable=k1v)
    krm1.configure(font=crippledfont, bg="pink", fg="red")
    krm1.select()
    krm1.place(x=75, y=245, anchor="w")
    k2v = tk.IntVar()
    krm2 = tk.Checkbutton(Donut, text="Original Filled Original Kreme", variable=k2v)
    krm2.configure(font="Chalkboard 14", bg="pink", fg="red")
    krm2.select()
    krm2.place(x=370, y=245, anchor="w")
    k3v = tk.IntVar()
    krm3 = tk.Checkbutton(Donut, text="Chocolate Iced Glazed", variable=k3v)
    krm3.configure(font=crippledfont, bg="pink", fg="red")
    krm3.select()
    krm3.place(x=75, y=275, anchor="w")
    k4v = tk.IntVar()
    krm4 = tk.Checkbutton(Donut, text="Maple Ice Glazed", variable=k4v)
    krm4.configure(font=crippledfont, bg="pink", fg="red")
    krm4.select()
    krm4.place(x=370, y=275, anchor="w")
    k5v = tk.IntVar()
    krm5 = tk.Checkbutton(Donut, text="Chocolate Iced Kreme Filled", variable=k5v)
    krm5.configure(font="Chalkboard 14", bg="pink", fg="red")
    krm5.select()
    krm5.place(x=75, y=305, anchor="w")
    k6v = tk.IntVar()
    krm6 = tk.Checkbutton(Donut, text="Chocolate Iced Sprinkles", variable=k6v)
    krm6.configure(font=crippledfont, bg="pink", fg="red")
    krm6.select()
    krm6.place(x=370, y=305, anchor="w")
    k7v = tk.IntVar()
    krm7 = tk.Checkbutton(Donut, text="Chocolate Iced Custard Filled", variable=k7v)
    krm7.configure(font="Chalkboard 13", bg="pink", fg="red")
    krm7.select()
    krm7.place(x=75, y=335, anchor="w")
    k8v = tk.IntVar()
    krm8 = tk.Checkbutton(Donut, text="Chocolate Iced Raspberry Filled", variable=k8v)
    krm8.configure(font="Chalkboard 11", bg="pink", fg="red")
    krm8.select()
    krm8.place(x=370, y=335, anchor="w")
    k9v = tk.IntVar()
    krm9 = tk.Checkbutton(Donut, text="Strawberry Iced", variable=k9v)
    krm9.configure(font=crippledfont, bg="pink", fg="red")
    krm9.select()
    krm9.place(x=75, y=365, anchor="w")
    k10v = tk.IntVar()
    krm10 = tk.Checkbutton(Donut, text="Strawberry Iced with Sprinkles", variable=k10v)
    krm10.configure(font="Chalkboard 11", bg="pink", fg="red")
    krm10.select()
    krm10.place(x=370, y=365, anchor="w")
    k11v = tk.IntVar()
    krm11 = tk.Checkbutton(Donut, text="Glazed Chocolate Cake", variable=k11v)
    krm11.configure(font=crippledfont, bg="pink", fg="red")
    krm11.select()
    krm11.place(x=75, y=395, anchor="w")
    k12v = tk.IntVar()
    krm12 = tk.Checkbutton(Donut, text="Glazed Blueverry Cake", variable=k12v)
    krm12.configure(font=crippledfont, bg="pink", fg="red")
    krm12.select()
    krm12.place(x=370, y=395, anchor="w")
    k13v = tk.IntVar()
    krm13 = tk.Checkbutton(Donut, text="Cake Batter", variable=k13v)
    krm13.configure(font=crippledfont, bg="pink", fg="red")
    krm13.select()
    krm13.place(x=75, y=425, anchor="w")
    k14v = tk.IntVar()
    krm14 = tk.Checkbutton(Donut, text="Oreo Cookies and Kreme", variable=k14v)
    krm14.configure(font=crippledfont, bg="pink", fg="red")
    krm14.select()
    krm14.place(x=370, y=425, anchor="w")
    k15v = tk.IntVar()
    krm15 = tk.Checkbutton(Donut, text="Glazed Raspberry Filled", variable=k15v)
    krm15.configure(font=crippledfont, bg="pink", fg="red")
    krm15.select()
    krm15.place(x=75, y=455, anchor="w")
    k16v = tk.IntVar()
    krm16 = tk.Checkbutton(Donut, text="Glazed Lemon Filled", variable=k16v)
    krm16.configure(font=crippledfont, bg="pink", fg="red")
    krm16.select()
    krm16.place(x=370, y=455, anchor="w")
    k17v = tk.IntVar()
    krm17 = tk.Checkbutton(Donut, text="Sugar", variable=k17v)
    krm17.configure(font=crippledfont, bg="pink", fg="red")
    krm17.select()
    krm17.place(x=75, y=485, anchor="w")
    k18v = tk.IntVar()
    krm18 = tk.Checkbutton(Donut, text="Cinnamon Apple Filled", variable=k18v)
    krm18.configure(font=crippledfont, bg="pink", fg="red")
    krm18.select()
    krm18.place(x=370, y=485, anchor="w")
    k19v = tk.IntVar()
    krm19 = tk.Checkbutton(Donut, text="Powdered Strawberry Filled", variable=k19v)
    krm19.configure(font="Chalkboard 12", bg="pink", fg="red")
    krm19.select()
    krm19.place(x=75, y=515, anchor="w")
    k20v = tk.IntVar()
    krm20 = tk.Checkbutton(Donut, text="New York Cheesecake", variable=k20v)
    krm20.configure(font=crippledfont, bg="pink", fg="red")
    krm20.select()
    krm20.place(x=370, y=515, anchor="w")
    k21v = tk.IntVar()
    krm21 = tk.Checkbutton(Donut, text="Caramel Kreme Crunch", variable=k21v)
    krm21.configure(font=crippledfont, bg="pink", fg="red")
    krm21.select()
    krm21.place(x=75, y=545, anchor="w")
    k22v = tk.IntVar()
    krm22 = tk.Checkbutton(Donut, text="Apple Fritter", variable=k22v)
    krm22.configure(font=crippledfont, bg="pink", fg="red")
    krm22.select()
    krm22.place(x=370, y=545, anchor="w")
    k23v = tk.IntVar()
    krm23 = tk.Checkbutton(Donut, text="Basketball", variable=k23v)
    krm23.configure(font=crippledfont, bg="pink", fg="red")
    krm23.select()
    krm23.place(x=75, y=575, anchor="w")
    k24v = tk.IntVar()
    krm24 = tk.Checkbutton(Donut, text="Football", variable=k24v)
    krm24.configure(font=crippledfont, bg="pink", fg="red")
    krm24.select()
    krm24.place(x=370, y=575, anchor="w")
    
def maison():
    #else
    global dbase1
    global dbase2
    global ice2
    global ice1
    global topping1
    global topping2
    global fill2
    global fill1
    
    hmfont = Font(family="Chalkboard", size ="15")

    #disabling everything else
    forgetim()
    forgetcri()
    home.config(state="disabled")
    timmies.config(state="normal")
    crisp.config(state="normal")

    #Working the buttons
    dbase1 = tk.Button(Donut, text="Donut Base", command=dbase)
    dbase1.configure(font=hmfont, bg="pink", fg="purple")
    dbase1.place(x=182, y=170, anchor="n", height=28)
    dbase2 = tk.Entry(Donut, text="")
    dbase2.configure(bg="white", stat="readonly")
    dbase2.place(x=321, y=170, anchor="n")
    ice1 = tk.Button(Donut, text="Icing", command=ice)
    ice1.configure(font=hmfont, bg="pink", fg="purple")
    ice1.place(x=182, y=220, anchor="n", height=28, width=87)
    ice2 = tk.Entry(Donut, text="")
    ice2.configure(bg="white", stat="readonly")
    ice2.place(x=321, y=220, anchor="n")
    topping1 = tk.Button(Donut, text="Topping", command=topping)
    topping1.configure(font=hmfont, bg="pink", fg="purple")
    topping1.place(x=182, y=270, anchor="n", height=28, width=87)
    topping2 = tk.Entry(Donut, text="")
    topping2.configure(bg="white", stat="readonly")
    topping2.place(x=321, y=270, anchor="n")
    fill1 = tk.Button(Donut, text="Filling", command=fill)
    fill1.configure(font=hmfont, bg="pink", fg="purple")
    fill1.place(x=182, y=320, anchor="n", height=28, width=87)
    fill2 = tk.Entry(Donut, text="")
    fill2.configure(bg="white", stat="readonly")
    fill2.place(x=321, y=320, anchor="n")

def dbase():
    
    base = random.randint(1,7)
    if base == 1:
        base = "Normal Base"
    elif base == 2:
        base = "Cake Doughnut"
    elif base == 3:
        base = "Cruller"
    elif base == 4:
        base = "Fritter"
    elif base == 5:
        base = "Blueberry Doughnut"
    elif base == 6:
        base = "Stuffed Doughnut"
    elif base == 7:
        base = "Chocolate Doughnut"
    dbase2.configure(bg="white", stat="normal")
    dbase2.delete(0, "end")
    dbase2.insert(0, base)

def ice():
    icing = random.randint(1, 7)
    if icing == 1:
        icing = "Glaze"
    elif icing == 2:
        icing = "Chocolate Icing"
    elif icing == 3:
        icing = "Strawberry Icing"
    elif icing == 4:
        icing = "Powdered Sugar"
    elif icing == 5:
        icing = "Caramel Icing"
    elif icing == 6:
        icing = "Vanilla Icing"
    elif icing == 7:
        icing = "Cinnamon Apple Glazed"
    ice2.configure(bg="white", stat="normal")
    ice2.delete(0, "end")
    ice2.insert(0, icing)

def topping():
    
    top = random.randint(1, 2)
    if top == 1:
        top = "Sprinkles"
    elif top == 2:
        top = "None"
    topping2.configure(bg="white", stat="normal")
    topping2.delete(0, "end")
    topping2.insert(0, top)

def fill():
    
    phil = random.randint(1, 3)
    if phil == 1:
        phil = "Cream"
    if phil == 2:
        phil = "Strawberry sauce"
    if phil == 3:
        phil = "Chocolate"
    if phil == 4:
        phil = "Lemon/Lime Sauce"
    fill2.configure(bg="white", stat="normal")
    fill2.delete(0, "end")
    fill2.insert(0, phil)

#Randomizer
def ran():
    global randut
    randut = tk.Entry(Donut, text="")
    randut.configure(bg="white", stat="readonly")
    randut.place(x=300, y=170, anchor="n")

def donots():
    global donot
    
    while True:
        donot = random.randint(1, 17)
        if donot == 1 and t1v.get() == 1:
            donot = "Apple Fritter"
            break
        elif donot == 2 and t2v.get() == 1:
            donot = "Chocolate Dip"
            break
        elif donot == 3 and t3v.get() == 1:
            donot = "Honey Dip"
            break
        elif donot == 4 and t4v.get() == 1:
            donot = "Vanilla Dip"
            break
        elif donot == 5 and t5v.get() == 1:
            donot = "Maple Dip"
            break
        elif donot == 6 and t6v.get() == 1:
            donot = "Chocolate Glazed"
            break
        elif donot == 7 and t7v.get() == 1:
            donot = "Double Chocolate"
            break
        elif donot == 8 and t8v.get() == 1:
            donot = "Old Fashion Plain"
            break
        elif donot == 9 and t9v.get() == 1:
            donot = "Old Fashion Glazed"
            break
        elif donot == 10 and t10v.get() == 1:
            donot = "Sour Cream Plain"
            break
        elif donot == 11 and t11v.get() == 1:
            donot = "Strawberry Vanilla"
            break
        elif donot == 12 and t12v.get() == 1:
            donot = "Strawberry"
            break
        elif donot == 13 and t13v.get() == 1:
            donot = "Boston Cream"
            break
        elif donot == 14 and t14v.get() == 1:
            donot = "Canadian Maple"
            break
        elif donot == 15 and t15v.get() == 1:
            donot = "Sour Cream Glazed"
            break
        elif donot == 16 and t16v.get() == 1:
            donot = "Honey Cruller"
            break
        elif donot == 17 and t17v.get() == 1:
            donot = "Blueberry"
            break
    ins()

def cronuts():
    global donot
    
    while True:
        donot = random.randint(1, 24)
        if donot == 1 and k1v.get() == 1:
            donot = "Original Glazed"
            break
        elif donot == 2 and k2v.get() == 1:
            donot = "Original Filled Original Kreme"
            break
        elif donot == 3 and k3v.get() == 1:
            donot = "Chocolate Iced Glazed"
            break
        elif donot == 4 and k4v.get() == 1:
            donot = "Maple Iced Glazed"
            break
        elif donot == 5 and k5v.get() == 1:
            donot = "Chocolate Iced Kreme Filled"
            break
        elif donot == 6 and k6v.get() == 1:
            donot = "Chocolate Iced Sprinkles"
            break
        elif donot == 7 and k7v.get() == 1:
            donot = "Chocolate Iced Custard Filled"
            break
        elif donot == 8 and k8v.get() == 1:
            donot = "Chocolate Iced Raspberry Filled"
            break
        elif donot == 9 and k9v.get() == 1:
            donot = "Strawberry Iced"
            break
        elif donot == 10 and k10v.get() == 1:
            donot = "Strawberry Iced with Sprinkles"
            break
        elif donot == 11 and k11v.get() == 1:
            donot = "Glazed Chocolate Cake"
            break
        elif donot == 12 and k12v.get() == 1:
            donot = "Glazed Blueberry Cake"
            break
        elif donot == 13 and k13v.get() == 1:
            donot = "Cake Batter"
            break
        elif donot == 14 and k14v.get() == 1:
            donot = "Oreo Cookies and Kreme"
            break
        elif donot == 15 and k15v.get() == 1:
            donot = "Glazed Raspberry Filled"
            break
        elif donot == 16 and k16v.get() == 1:
            donot = "Glazed Lemon Filled"
            break
        elif donot == 17 and k17v.get() == 1:
            donot = "Sugar"
            break
        elif donot == 18 and k18v.get() == 1:
            donot = "Cinammon Apple Filled"
            break
        elif donot == 19 and k19v.get() == 1:
            donot = "Powdered Strawberry Filled"
            break
        elif donot == 20 and k20v.get() == 1:
            donot = "New York Cheesecake"
            break
        elif donot == 21 and k21v.get() == 1:
            donot = "Caramel Kreme Crunch"
            break
        elif donot == 22 and k22v.get() == 1:
            donot = "Apple Fritter"
            break
        elif donot == 23 and k23v.get() == 1:
            donot = "Basketball"
            break
        elif donot == 24 and k24v.get() == 1:
            donot = "Football"
            break
    ins()

    
def ins():
    randut.configure(stat="normal")
    randut.delete(0, "end")
    randut.insert(0, donot)
    randut.configure(stat="readonly")

#Forgetting
def forgetim():
    try:
        randut.place_forget()
        timtype.place_forget()
        tim1.place_forget()
        tim2.place_forget()
        tim3.place_forget()
        tim4.place_forget()
        tim5.place_forget()
        tim6.place_forget()
        tim7.place_forget()
        tim8.place_forget()
        tim9.place_forget()
        tim10.place_forget()
        tim11.place_forget()
        tim12.place_forget()
        tim13.place_forget()
        tim14.place_forget()
        tim15.place_forget()
        tim16.place_forget()
        tim17.place_forget()
        timchecks.place_forget()
    except NameError:
        pass

def forgetcri():
    try:
        cripplecream.place_forget()
        crippledchecks.place_forget()
        krm1.place_forget()
        krm2.place_forget()
        krm3.place_forget()
        krm4.place_forget()
        krm5.place_forget()
        krm6.place_forget()
        krm7.place_forget()
        krm8.place_forget()
        krm9.place_forget()
        krm10.place_forget()
        krm11.place_forget()
        krm12.place_forget()
        krm13.place_forget()
        krm14.place_forget()
        krm15.place_forget()
        krm16.place_forget()
        krm17.place_forget()
        krm18.place_forget()
        krm19.place_forget()
        krm20.place_forget()
        krm21.place_forget()
        krm22.place_forget()
        krm23.place_forget()
        krm24.place_forget()
    except NameError:
        pass

def forgethome():
    try:
        dbase1.place_forget()
        dbase2.place_forget()
        topping1.place_forget()
        topping2.place_forget()
        ice1.place_forget()
        ice2.place_forget()
        fill1.place_forget()
        fill2.place_forget()
    except NameError:
        pass

def password1():
    global label1, password
    global label12
    password += 1
    emptyMenu = tk.Menu(Donut)
    Donut.config(menu=emptyMenu)
    try:
        textitle.place_forget()
        loc.place_forget()
        timmies.place_forget()
        crisp.place_forget()
        home.place_forget()
    except NameError:
        pass
    forgetcri()
    forgetim()
    forgethome()
    
    label1 = tk.Entry(Donut)
    label1.pack()
    label12 = tk.Button(Donut, text="enter", command=passwordtrue)
    label12.pack()

def passwordtrue():
    troubles = "test"
    if label1.get() == "someday":
        label1.delete(0, "end")
        label1.insert(0, "I removed this part, sorry")
    else:
        Toolbar()
        words()
        location()
    try:
        label1.pack_forget()
        label12.pack_forget()
    except NameError:
        pass
        
#Before the Window Opens
words()
Toolbar()
location()

#Opening Window
Donut.mainloop()

