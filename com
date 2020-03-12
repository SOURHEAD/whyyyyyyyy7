"""from tkinter import *
x = Tk()
x.configure(bg="light blue")
x.title("trial after dawn")

def click():
    e = textentry.get()
    Label(x,text=e).pack()
def click2():
    print("hello interpreter")

textentry=Entry(x,width=50)
textentry.pack()
textentry.insert(0,"here")

Button(x,text="soobmit",width=6,command=click).pack()
Button(x,text="stope",command=click2).pack()

x.mainloop()"""

for i in range(1,15):
    if(i==1 or i==14):
        for r in range(8):
           print("* ",end="")
        print()
    else:
        if(i%2==0):
            print("")
        else:print((" "*(14-i))+"*")
            
