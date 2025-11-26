# Command-line arguments

!!!- info "Learning outcomes"

    - Read [the official Python documentation about `sys.argv`](https://docs.python.org/3/library/sys.html#sys.argv)
    - Read [How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html)
    - Can read the command-line arguments
    - Can run a Python script with command-line arguments

???- question "For teachers"

    Teaching goals are:

    - Learners have used sys.args
    - Learners have run a Python script with command-line arguments

    Lesson plan:

    - 5 mins: prior knowledge
    - 5 mins: presentation
    - 15 mins: challenge
    - 5 mins: feedback

    Prior:

    - What are command-line arguments?
    - What is meant with 'a command-line interface'?
    - Why use command-line arguments?

## Overview

Sometime, also programs need input, for example
the name of the input file and the name of a results file:

```bash
python my_input.csv my_results.csv
```

Sometime you need to get 'stuff to work', for example,
code written by someone else.
In this session, we practice this,
going through the problems and errors that occur
when you want to 'just want to run the stupid code'.

## Exercises

## Exercise 1: Read the command-line arguments

Read
[the official Python documentation about `sys.argv`](https://docs.python.org/3/library/sys.html#sys.argv).

Create a script called `read_argv.py` with the following content:

```python
import sys

print(sys.argv)
```

Run the Python script as shown below. What does it print?

```bash
python read_argv.py
```

???- question "Answer"

    ```bash
    ['read_argv.py']
    ```

Run the Python script as shown below. What does it print?

```bash
python read_argv.py hello world
```

???- question "Answer"

    ```bash
    ['read_argv.py', 'hello', 'world']
    ```

Run the Python script as shown below. What does it print?

```bash
python read_argv.py "hello world"
```

???- question "Answer"

    ```bash
    ['read_argv.py', 'hello world']
    ```

Run the Python script as shown below. What does it print?

```bash
python read_argv.py 'hello world'
```

???- question "Answer"

    ```bash
    ['read_argv.py', 'hello world']
    ```

## Exercise 2: Read a command-line argument

`sys.argv` is a list. Here we use this list

Read the following sections of
[How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html):

- `11. Lists`
- `11.1. List values`
- `11.2. Accessing elements`

Modify the script in such a way that the script will only show the first command-line
argument.

For example, running the script like this:

```bash
python read_argv.py hello world
```

it should show `hello`.

???- question "Answer"

    A possible implementation is this:

    ```python
    import sys

    args = sys.argv
    print(args[1])
    ```

    Some comments:

    - `print(args[0])` prints the name of the script
    - the script does not check if the user supplies command-line arguments

## Exercise 3: Work with a command-line argument

Read the following sections of
[How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html):

- 8.7. String comparison

Now, we make the script produce different output.

If the script is run like this:

```bash
python read_argv.py hello
```

it should show `Hello human!`.

If the script is run like this:

```bash
python read_argv.py bye
```

it should show `Sad to see you go human!`.

Write the script to do that.

???- question "Answer"

    A possible implementation is this:

    ```python
    import sys

    args = sys.argv
    word = args[1]

    if word == 'hello':
        print('Hello human!')

    if word == 'bye':
        print('Sad to see you go human!')
    ```

    Some comments:

    - `print(args[0])` prints the name of the script
    - the script does not check if the user supplies command-line arguments
    - instead of using two `if` statements (which is good enough for this
      exercise), an `elif` could be used in the second conditional:
      it would be considered better, because if the word is `hello`,
      then there is no need anymore to check if it is `bye`
