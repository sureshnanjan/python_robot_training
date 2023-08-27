def arguments(*args , **kwargs):
    print("POSITIONAL",args)

    print("KEYWORD",kwargs)

arguments(0,1,2,6,x="delhi",y="mumbai")