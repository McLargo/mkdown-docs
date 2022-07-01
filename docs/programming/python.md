# Python

TODO: REVIEW

## Cursos pyhon
python 3.7
     
    https://www.udacity.com/course/introduction-to-python--ud1110
    https://www.stavros.io/tutorials/python/
    https://learnxinyminutes.com/docs/python/
    https://www.tutorialspoint.com/python3/index.htm
    https://knightlab.northwestern.edu/2014/06/05/five-mini-programming-projects-for-the-python-beginner/
    https://www.hackerrank.com/challenges/py-set-add/problem
    https://www.djangoproject.com/
     
## pep8

https://www.python.org/dev/peps/pep-0008/
    
- use 4 spaces, instad of tab
- use two line breack to separate class or methods
- use one line breack between methods inside a class
- how to import library
    - standard libraries
    - 3pp libraries
    - django libraries
    - local importation

    **CAREFUL while doing import**

    - it is relative import if it is same app: _.{class}_
    - better use absolute import: _{app}.{class}_
    - avoid using _from something import *_

- use `_` instead of `-`
- avoid use of abbreviature while defining variable, classes or methods
- one empty line at the end of the file
- 79 max length of line
- use flake8 and [pylint](https://github.com/PyCQA/pylint/blob/master/pylintrc), standard libraries to check pep8 and lintº


## description

python es un lenguaje (maravilloso) de programación. Es un lenguage interpretado (no necesita compilación de un ejecutable como java). Eso permite que podamos jugar con él, bien desde la línea de comandos, hasta ficheros más complejos o aplicaciones que soporten servicios web.


Tutorial base en castellano
https://www.learnpython.org/es/

Basic tutorial from python (english)
https://docs.python.org/3/tutorial/index.html

virtualenvs
As your python application may in most of the cases specific libraries versions, having all of them installed at once in your machine could be problematic.
https://pythonbasics.org/virtualenv/

Learn python in 10 minutes
https://www.stavros.io/tutorials/python/
https://learnxinyminutes.com/docs/python/


Diferentes tipos de variables:
- integer: 2
- float: 2.1
- string/unicode: 'hello' / u'Hola Raúl'
- list: [1, 2, 3]
- tuple: (1, 2,3, )
- dictionary: {'key': 'value'}
- boolean
- custom objects

Condicionales:
- if 1 == 1:
- if 1 != 1:
- if 1 in [1,2]:
- if 1 not in [1,2]:
- else
- elif

Bucles:
- for item in items:
- while i < 6:
