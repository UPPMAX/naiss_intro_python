# Files

!!!- info "Learning outcomes"

    - Have read a file
    - Have created a file

???- question "For teachers"

    Teaching goals are:

    - Learners have read a file
    - Learners have created a file

    Lesson plan:

    - 5 mins: prior knowledge
    - 5 mins: presentation
    - 15 mins: challenge
    - 5 mins: feedback

    Prior:

    - What is file I/O?
    - What are some problems you can have when reading a file?
    - What are some problems you can have when creating a file?

## Overview

Most programmers need to work on data and produce some result.
In Python, we -of course- can read from files and write to files.
Here we do just that.

## Exercises

## Exercise 1: create a simple text file

Read the following sections of
[How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html):

- 13.1. About files
- 13.2. Writing our first file

Then do:

- Put the code at the top of 13.2 in a Python script
- Run that code
- Verify that it works as expected


## Exercise 2: read and create a simple text file

Read the following sections of
[How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html):

- 13.4. Turning a file into a list of lines

Consider searching for ['Python reverse order'](https://lmddgtfy.net/?q=python%20reverse%20order),
as you will need to do this in the exercise.

Then do:

- Exercise 13.11.1

!!! question "13.11.1"

    Create a script that reads a file and writes out a new file
    with the lines in reversed order
    (i.e. the first line in the old file becomes the last one in the new file.)

???- question "Answer"

    The new thing is to use `reversed`:

    ```python
    f = open("friends.txt", "r")
    xs = f.readlines()
    f.close()

    xs = reversed(xs)

    g = open("sortedfriends.txt", "w")
    for v in xs:
        g.write(v)
    g.close()
    ```

    In modern Python, there are better solutions.


???- info "A better solution"

    This is an answer that would be superior
    in modern Python:

    ```python
    with open("friends.txt", "r") as f:
        xs = f.readlines()

    xs = reversed(xs)

    with open("sortedfriends.txt", "w") as g:
        for v in xs:
            g.write(v)
    ```

    This is considered better, because on cannot forget
    to close the files anymore: this is now done automatically.
