---
tags:
  - summary
  - conclusion
---

# Summary

## Python on HPC

HPC centers have different quality of documentation:
you are encouraged to [file a support ticket](https://www.naiss.se/support/)
to request better documentation.

To login to your HPC cluster via the terminal, one can use SSH
as shown below, but the exact syntax differs per cluster:

```bash
ssh my_user_name@my_hpc_cluster.se
```

To find and load your favorite Python version
one can use the commands below,
but the exact syntax differs per cluster:

```bash
module spider python
module load python
```

Python is an interpreted language.
This means that an interpreter reads my code, converts it to machine code
and then runs that machine code.

The Python interpreter is started with:

```bash
python
```

The go-to text editor on an HPC cluster is called `nano`,
with `emacs` and `vim` being more advanced text editors.
`nano` can be started with:

```bash
nano
```

To create a Python script, one can do:

```bash
nano my_script.py
```

To run a Python script, one can do:

```bash
python my_script.py
```

## Basic Python

[How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html)
is a fine book to start learning Python from.

To create a variable in Python, do:

```python
my_variable = 3.14
```

To print a variable in Python, do:

```python
print(my_variable)
```

To do exponentiation in Python, use `**`:

```python
my_variable = 3 ** 2
```

To use the modulo operator, `%`, which is useful to determine
if a number is odd/even/prime, in Python do:

```python
my_variable = 5 % 2
```

To ask the user to give a number, use `input`:

```python
t_now = int(input("Enter the current hour"))
```

To read a file, use `open` and `readlines` and `close`:

```python
f = open("friends.txt", "r")
xs = f.readlines()
f.close()
```

To write to a file, use `open` and `readlines` and `close`:

```python
g = open("sortedfriends.txt", "w")
for v in xs:
    g.write(v)
g.close()
```


