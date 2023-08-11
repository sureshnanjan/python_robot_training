import sample
"""
This is a module to demonstrate the functions types.
"""
def add(a, b=10):
    """
    This is a function to do addition
    """
    breakpoint()
    var1 = 10
    name = "suresh"
    #comment for codeing
    #
    return a + b


def sub(a, b):
    return a - b
    
def mutable_demo(a, L=[]):
    L.append(a)
    return L
    
def immutable_demo(a, L=()):
    L.append(a)
    return L

def simply_pass():
    """
    This is my complicated task
    """
    # nop
    pass
    
  

#The default values are evaluated at the point of function definition in the defining scope
tracker =  0


def default_args(prompt, retries=4, reminder='Please try again!'):
    while True:
        ok = input(prompt)
        if ok in ('y', 'ye', 'yes'):
            return True
        if ok in ('n', 'no', 'nop', 'nope'):
            return False
        retries = retries - 1
        if retries < 0:
            raise ValueError('invalid user response')
        print(reminder)


def keyword_args(voltage, state='a stiff', action='voom', type='Norwegian Blue'):
    print("-- This parrot wouldn't", action, end=' ')
    print("if you put", voltage, "volts through it.")
    print("-- Lovely plumage, the", type)
    print("-- It's", state, "!")

def special_parameters(pos1, pos2, /, pos_or_kwd, *, kwd1, kwd2):
    pass


def standard_arg(arg):
    print(arg)

def pos_only_arg(arg, /):
    print(arg)

def kwd_only_arg(*, arg):
    print(arg)

def combined_example(pos_only, /, standard, *, kwd_only):
    print(pos_only, standard, kwd_only)


def annotated_function(arg1:str,arg2:int) -> bool:
    """
    This function has annotations which optionally can define the types of the parameters and its return type
    """
    pass

single_arg_lambda = lambda x: print(f"I received this {x} and i can double it {x*2}")
three_arg_lambda = lambda arg1,arg2,arg3: print(f"I received {arg1} ,{arg2},{arg3}  and i can use it  anyways {arg1+arg2+arg3}")


def simple():
    print("This sia simple function")

def executor(fn):
    print("Doing some validationand and invoking the passed function")
    fn();

    
if __name__=='__main__':
    """
    python -m pdb myscript.py
    #print(globals())
    #print(f"Adding 1 and 2 is {add(1,2)}")
    #print(f"Subtracting 5 and 2 is {sub(5,2)}")
    single_arg_lambda(2)
    three_arg_lambda(1,2,3)
    unpack with list *list
    unpack with dictionary **dict
     
    #combined_example(pos_only=1,2,kwd_only=10)
    print(f"Adding 1 and 2 is {add(1,2)}")
    print(f"Adding 1 and 2 is {add('1','2')}")
    args = [10,20]
    kwarg = {'a':10, 'b':20}
    print(add(*args))
    print(add(**kwarg))
    
    # correct call
    combined_example(1,standard=2,kwd_only=10)
    combined_example(1,2,kwd_only=10)
    #not correct calls
    #combined_example(1,standard=2,10) # TypeError: combined_example() takes 2 positional arguments but 3 were given
    #combined_example(1,2,10)
    combined_example(pos_only = 10, standard=10, kwd_only = 10)
    # TypeError: combined_example() got some positional-only arguments passed as keyword arguments: 'pos_only'
    
    args = [10,20]
    kwarg = {'a':10, 'b':20}
    print(add(*args)) # List deconstruction
    print(add(**kwarg)) # Dictionary Deconstruction
    
    (a,b,c,d) = 1,2,"suresh",True
    
    print(a)
    print(b)
    print(c)
    print(d)
    """
    print(type(single_arg_lambda))
    print(type(simple))
    single_arg_lambda(2)
    executor(simple)
    executor(lambda: print("This is on the fly"))
    print(annotated_function.__annotations__)
    