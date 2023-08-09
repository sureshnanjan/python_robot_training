# Online Python compiler (interpreter) to run Python online.
# Write Python 3 code in this online editor and run it.
def add(a=10,b=20):
    c=a+b
    d=a*b
    return c,d
print(add(1,2))

def hello(greeting="hello", name="world"):
    print(greeting,name)
hello("greetings")

def fub(*p):
    print(p)
fub(1,2,'a')

def fun(**p):
    print(p)
fun(x=1,y=4,z=5)

a=lambda x,y:x+y
print(a(2,3))
