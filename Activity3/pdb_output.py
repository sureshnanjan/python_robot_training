Python 3.11.4 (tags/v3.11.4:d2340ef, Jun  7 2023, 05:45:37) [MSC v.1934 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
>>> 
= RESTART: D:/SSP Project Training/Robot training/Robot Training Repo/python_robot_training/Activity3/debug_script.py
> d:\ssp project training\robot training\robot training repo\python_robot_training\activity3\debug_script.py(10)main()
-> print("Result:",z)
(Pdb) h

Documented commands (type help <topic>):
========================================
EOF    c          d        h         list      q        rv       undisplay
a      cl         debug    help      ll        quit     s        unt      
alias  clear      disable  ignore    longlist  r        source   until    
args   commands   display  interact  n         restart  step     up       
b      condition  down     j         next      return   tbreak   w        
break  cont       enable   jump      p         retval   u        whatis   
bt     continue   exit     l         pp        run      unalias  where    

Miscellaneous help topics:
==========================
exec  pdb

(Pdb) n
Result: 15
--Return--
> d:\ssp project training\robot training\robot training repo\python_robot_training\activity3\debug_script.py(10)main()->None
-> print("Result:",z)
(Pdb) p
*** SyntaxError: invalid syntax
(Pdb) q
Traceback (most recent call last):
  File "D:/SSP Project Training/Robot training/Robot Training Repo/python_robot_training/Activity3/debug_script.py", line 12, in <module>
    main()
bdb.BdbQuit
>>> c
Traceback (most recent call last):
  File "<pyshell#0>", line 1, in <module>
    c
NameError: name 'c' is not defined
