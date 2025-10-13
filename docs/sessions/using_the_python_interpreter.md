# Using the Python interpreter

!!!- info "Learning outcomes"

    - Practice using the documentation of your HPC cluster
    - Practice using the Python book
      [How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html)
    - To be able to login to your HPC cluster
    - To be able to load Python
    - To be able to run a minimal Python program

???- question "For teachers"

    Teaching goals are:

    - Learners have used the documentation of their HPC cluster
    - Learners have used the Python book
    - Learners have used the Python interpreter
    - Learners have loaded Python

    Other goals are:

    - Verify that learners indeed have learned how to login
    - Verify that learners indeed have learned how to use the module system

    Prior and feedback question:

    - On an HPC cluster, what are software modules?
    - On an HPC cluster, which problem do software modules solve?
    - On an HPC cluster, why don't we let users install all software themselves?
    - What does it mean that Python is an interpreted language?
    - What is an interpreter?

    Notes:

    - For those that use Bianca, it may take some time to get a login node.
      Encourage those to try Rackham while waiting


## Why software modules are important

Software modules allows users of any HPC cluster
to activate their favorite software of any version.
This helps to assure reproducible research.

## Why the Python interpreter is important

```mermaid
flowchart TD
  a_letter[A letter to do something]
  employee[Employee]
  something_done[Something is done]
  a_letter --> employee --> something_done

  code[Code] 
  interpreter[Interpreter]
  machine_code[Machine code]
  code --> interpreter --> machine_code
```

The Python interpreter is the program that lets your Python code
do something. It is at the heart of using Python: without it,
you cannot do Python programming.

## Exercises

???- question "Enjoy a video?"

    You can find a video with solutions to these exercises:

    HPC Cluster|Login method|Videos
    -----------|------------|-------------------------------------
    Alvis      |SSH         |[Video](https://youtu.be/R_RxKo-Vma4)
    Bianca     |SSH         |[Video](https://youtu.be/80AG-4niBgk)
    COSMOS     |SSH         |[Video](https://youtu.be/aqqHUvvolds)
    Dardel     |SSH         |[Video](https://youtu.be/BAD6y_a5xBQ)
    Kebnekaise |SSH         |[Video](https://youtu.be/DpnKUEOcIdE)
    LUMI       |SSH         |[Video](https://youtu.be/bPdvn2gajgU)
    Pelle      |SSH         |TODO
    Rackham    |SSH         |[Video](https://youtu.be/S6pYTqRmI7U)
    Tetralith  |SSH         |[Video](https://youtu.be/OBT9XuVktwg)

To develop code in Python on your HPC clusters, one needs to:

- Login to that HPC cluster, to be able to work on it
- Load the Python module, to be using the right Python interpreter and environment
- Use the Python interpreter, to run Python code

Luckily, the documentation of your HPC center
should allow you to do this by yourself!

These exercises will ensure you are able to run a minimal Python program.

The difficulty of these exercises depends on your HPC cluster:

HPC cluster name|Need VPN?|Need SSH keys?|Need 2FA?|Documentation|Difficulty
----------------|---------|--------------|---------|-------------|----------
Alvis           |Yes      |No            |No       |Minimal      |Medium
Bianca          |Yes      |No            |Yes      |Excellent    |Medium
COSMOS          |No       |No            |Yes      |Good         |Easy
Dardel          |No       |Yes           |No       |Minimal      |Medium
LUMI            |No       |Yes           |No       |Reasonable   |Medium
Kebnekaise      |No       |No            |No       |Good         |Easy
Pelle           |No       |No            |No       |Excellent    |Easy
Rackham         |No       |No            |No       |Excellent    |Easy
Tetralith       |No       |No            |Yes      |Good         |Easy

### Exercise 1: remember a Zoom room

We will use breakout rooms, as this is best for learning.
Ideally, each breakout room has 2 learners for the same HPC cluster.
As it cannot be predicted how many learners show up per cluster,
we do this dynamically.

- Remember a breakout room of your HPC cluster,
  from the schedule below

HPC cluster name  |Main breakout room
------------------|------------------
Bem2 and Vera     |Room 1
Bianca            |Room 2
COSMOS and Rackham|Room 3
Dardel 1          |Room 4
Dardel 2          |Room 5
Tetralith 1       |Room 6
Tetralith 2       |Room 7
Tetralith 3       |Room 8
Tetralith 4       |Room 9
Tetralith 5       |Room 10
Tetralith 6       |Room 11
Tetralith 7       |Room 12
Tetralith 8       |Room 13
Tetralith 9       |Room 14
Tetralith 10      |Room 15
Tetralith 11      |Room 16

- Go there
- Learners will be ruthlessly moved between rooms until all rooms have
  2 or 3 people present

### Exercise 2: login to your HPC cluster

Login to your favorite HPC cluster.
This should be easy, as this is
[a prerequisite for this course](../prereqs/README.md).

### Exercise 3: load the Python module

Go to the documentation of your HPC cluster
and load a Python software module of the version indicated in the
table below.

HPC Cluster|Python version
-----------|--------------
Alvis      |`3.12.3`
Bianca     |`3.11.4`
COSMOS     |`3.11.5`
Dardel     |`3.11.4`
Kebnekaise |`3.11.3`
LUMI       |`3.11.7`
Pelle      |`3.13.1`
Rackham    |`3.12.7`
Tetralith  |`3.10.4`

???- question "Answer"

    From the documentation of your center, searching for, for example,
    'Python module',
    you will find information on how to load the Python module.

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Documentation                                                                                                                                                                             |Solution
    -----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------
    Alvis      |[Short documentation](https://www.c3se.chalmers.se/documentation/module_system/python_example/) or [long documentation](https://www.c3se.chalmers.se/documentation/module_system/modules/)|`module load Python/3.12.3-GCCcore-13.3.0`
    Bianca     |[Documentation](https://docs.uppmax.uu.se/software/python/#loading-python)                                                                                                                |`module load python/3.11.4`
    COSMOS     |[Documentation](https://lunarc-documentation.readthedocs.io/en/latest/guides/applications/Python/)                                                                                        |`module load GCCcore/13.2.0 Python/3.11.5`
    Dardel     |:warning: [Documentation](https://support.pdc.kth.se/doc/software/module/) and [more documentation](https://support.pdc.kth.se/doc/applications/python/)                                  |`module load bioinfo-tools python/3.11.4`
    Kebnekaise |[Documentation](https://docs.hpc2n.umu.se/software/userinstalls/#python__packages)                                                                                                        |`module load GCC/12.3.0 Python/3.11.3`
    LUMI       |[Documentation](https://docs.lumi-supercomputer.eu/software/installing/python/#use-the-cray-python-module)                                                                                |`module load cray-python/3.11.7`
    Pelle      |[Documentation](http://docs.uppmax.uu.se/software/python/)                                                                                                                                |`module load Python/3.13.1-GCCcore-14.2.0`
    Rackham    |[Documentation](http://docs.uppmax.uu.se/software/python/)                                                                                                                                |`module load python/3.12.7`
    Tetralith  |[Documentation](https://www.nsc.liu.se/software/python/)                                                                                                                                  |`module load Python/3.10.4-env-hpc2-gcc-2022a-eb`

    <!-- markdownlint-enable MD013 -->

    - :warning: means that the documentation does not clearly answer
      this question.
      You may find that you can piece it together easily enough or
      you may find that you cannot.
      You are encouraged
      to contact your HPC center to help them help you better

### Exercise 4: start the Python interpreter

Go to the documentation of your HPC cluster
and start the Python interpreter.

???- question "Answer"

    From the documentation of your center, searching for, for example,
    'Python' or 'Python interpreter',
    you may find information on how to start the Python interpreter.

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Documentation                                                                              |Solution
    -----------|-------------------------------------------------------------------------------------------|--------
    Alvis      |:warning:                                                                                  |`python`
    Bianca     |[Documentation](https://docs.uppmax.uu.se/software/python/#loading-python)                 |`python`
    COSMOS     |:warning:                                                                                  |`python`
    Dardel     |:warning: [Documentation](https://support.pdc.kth.se/doc/applications/python/)             |`python`
    Kebnekaise |:warning:                                                                                  |`python`
    LUMI       |:warning: [Documentation](https://docs.lumi-supercomputer.eu/software/installing/python/)  |`python`
    Pelle      |[Documentation](https://docs.uppmax.uu.se/software/python/#loading-python)                 |`python`
    Rackham    |[Documentation](https://docs.uppmax.uu.se/software/python/#loading-python)                 |`python`
    Tetralith  |[Documentation](https://www.nsc.liu.se/software/python/)                                   |`python`

    <!-- markdownlint-enable MD013 -->

    - :warning: for this specific question means that the documentation does
      not answer this (or the answer is hiding in more complicated examples).
      You may find this an acceptable omission or you may not.
      You are encouraged
      to contact your HPC center to help them help you better

???- question "Cannot get this to work?"

    If there is no time to get this fixed during the course,
    you can also use Python on your local computer.

### Exercise 5: run a 'Hello world' program

Copy-paste the following code to the Python interpreter:

```python
print('Hello, world!')
```

Press enter.

How does that look like?

???- question "Answer"

    Your output will look similar to this:

    ```python
    $ python
    Python 3.12.3 (main, Nov  6 2024, 18:32:19) [GCC 13.2.0] on linux
    Type "help", "copyright", "credits" or "license" for more information.
    >>> print('Hello, world!')
    Hello, world!
    >>> 
    ```

Congratulations, you've just run a 'Hello world' program :+1:
