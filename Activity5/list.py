Python 3.11.4 (tags/v3.11.4:d2340ef, Jun  7 2023, 05:45:37) [MSC v.1934 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
>>> nos=[1,2,3,4,5,6]
>>> nos
[1, 2, 3, 4, 5, 6]
>>> nos[0]
1
>>> nos[-2]
5
>>> nos[2:]
[3, 4, 5, 6]
>>> nos[-3:]
[4, 5, 6]
>>> nos[:]
[1, 2, 3, 4, 5, 6]
>>> nos+[7,8,9,10]
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
>>> nos
[1, 2, 3, 4, 5, 6]
>>> nos[2]=10
>>> nos
[1, 2, 10, 4, 5, 6]
>>> nos.append(100)
>>> nos
[1, 2, 10, 4, 5, 6, 100]
>>> nos.append(7**3)
>>> nos
[1, 2, 10, 4, 5, 6, 100, 343]
>>> alpha= ['a', 'b', 'c', 'd', 'e', 'f', 'g']
>>> alpha
['a', 'b', 'c', 'd', 'e', 'f', 'g']
>>> alpha[2:5] = ['C', 'D', 'E']
>>> alpha
['a', 'b', 'C', 'D', 'E', 'f', 'g']
>>> alpha[2:5] = []
>>> alpha
['a', 'b', 'f', 'g']
>>> alpha[:]=[]
>>> alpha
[]
