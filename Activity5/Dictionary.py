Python 3.11.4 (tags/v3.11.4:d2340ef, Jun  7 2023, 05:45:37) [MSC v.1934 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
>>> dict={'name':'Piyush','id':55}
>>> dict
{'name': 'Piyush', 'id': 55}
>>> dict['name']
'Piyush'
>>> dict['id']
55
>>> del dict['id']
>>> dict
{'name': 'Piyush'}
>>> dict['lname']='Zope'
>>> dict
{'name': 'Piyush', 'lname': 'Zope'}
>>> sorted[dict]
Traceback (most recent call last):
  File "<pyshell#8>", line 1, in <module>
    sorted[dict]
TypeError: 'builtin_function_or_method' object is not subscriptable
>>> list[dict]
list[{'name': 'Piyush', 'lname': 'Zope'}]
>>> sorted(dict)
['lname', 'name']
>>> 'name' in dict
True
>>> 'lname' in dict
True
>>> {x: x**2 for x in (2,4,6)}
{2: 4, 4: 16, 6: 36}
>>> dict(a=10,b=11,c=12)
Traceback (most recent call last):
  File "<pyshell#14>", line 1, in <module>
    dict(a=10,b=11,c=12)
TypeError: 'dict' object is not callable
>>> dict('a'=10,'b'=11,'c'=12)
SyntaxError: expression cannot contain assignment, perhaps you meant "=="?
dict(name=Piyush,lname=Zope)
Traceback (most recent call last):
  File "<pyshell#16>", line 1, in <module>
    dict(name=Piyush,lname=Zope)
NameError: name 'Piyush' is not defined
