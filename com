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
               
"""
# digits of a no.
def digits(num):
  i,k=0,[]
  while(num!=0):
      k.append(num%10)
      num=num//10
      i= i+1
  return (k[::-1])   
digits(23)"""


"""#number with lowest ones digit
kil=[]
def lowdig(num):
    for i in num:
      kil.append(i%10)
    no = min(kil)
    for i in num:
        if (no == i%10):
            ind=i
    return ind
print(lowdig([20,89,12]))"""

"""#multiply nall numbers in a list
def multilist(lista):
    pro=1
    for i in lista:
        pro*=i
    return pro
print(multilist([32,12,32,12,0]))"""

"""def palingdrome(srtt):
    srt=str(srtt)
    if(srt==srt[::-1]):
        return "yes"
    else:
        return "no"
    """

def isprime(j):
 for i in range(2,j//2):
  if(j%i==0):
    return False
    break
  if(i == (j//2)-1):
    return True
