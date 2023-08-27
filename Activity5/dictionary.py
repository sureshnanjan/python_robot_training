Python 3.10.5 (tags/v3.10.5:f377153, Jun  6 2022, 16:14:13) [MSC v.1929 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
dict1={"a":2,"b":5,"c":}
SyntaxError: expression expected after dictionary key and ':'
dict1={"a":2,"b":5,"c":9}
dict1
{'a': 2, 'b': 5, 'c': 9}

dict1['b']
5
dict1["x"]=20
dict1
{'a': 2, 'b': 5, 'c': 9, 'x': 20}
sorted(dict1)
['a', 'b', 'c', 'x']
del dict1['a']
dict1
{'b': 5, 'c': 9, 'x': 20}
for i, j in dict1.items():
    print(i)
    print(j)

    
b
5
c
9
x
20
