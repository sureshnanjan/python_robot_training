Python 3.10.5 (tags/v3.10.5:f377153, Jun  6 2022, 16:14:13) [MSC v.1929 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
numbers=[3,5,2,6,7]
numbers
[3, 5, 2, 6, 7]
numbers[-1]
7
numbers[2]
2
numbers[1:]
[5, 2, 6, 7]
numbers[-1:]
[7]
numbers[:]
[3, 5, 2, 6, 7]
numbers.append(30)
numbers
[3, 5, 2, 6, 7, 30]

numbers.extend([20,60,100])
numvers
Traceback (most recent call last):
  File "<pyshell#11>", line 1, in <module>
    numvers
NameError: name 'numvers' is not defined. Did you mean: 'numbers'?
numbers
[3, 5, 2, 6, 7, 30, 20, 60, 100]
numbers[3:6]
[6, 7, 30]
numbers[-1:3]
[]