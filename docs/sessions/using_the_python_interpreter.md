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

    - What is Python?
    - What are features of the Python language?
    - What is an interpreted language?
    - What is a scripting language?
    - What is an interpreter?
    - What is an HPC cluster?
    - What are features of your HPC cluster?
    - What is a login node?
    - What is the rule on what to run on a login node?
    - How to run heavy Python calculations on your HPC cluster?
    - How to make your Python scripts reproducible?

    Lesson plan:

    - 5 mins: prior knowledge
    - 5 mins: presentation
    - 15 mins: challenge
    - 5 mins: feedback

    Notes:

    - For those that use Bianca, it may take some time to get a login node.
      Encourage those to try Rackham while waiting

## Why?

You want to make a computer run Python code,
for some good reason. Here we do so!

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
Rackham         |No       |No            |No       |Excellent    |Easy
Tetralith       |No       |No            |Yes      |Good         |Easy

## Exercises

???- question "Enjoy a video?"

    You can find a video with solutions to these exercises:

    HPC Cluster|Login method|Link to video
    -----------|------------|------------------------------------
    Alvis      |SSH         |[Here](https://youtu.be/R_RxKo-Vma4)
    Bianca     |SSH         |[Here](https://youtu.be/80AG-4niBgk)
    COSMOS     |SSH         |[Here](https://youtu.be/aqqHUvvolds)
    Dardel     |SSH         |[Here](https://youtu.be/BAD6y_a5xBQ)
    Kebnekaise |SSH         |[Here](https://youtu.be/DpnKUEOcIdE)
    LUMI       |SSH         |[Here](https://youtu.be/bPdvn2gajgU)
    Rackham    |SSH         |[Here](https://youtu.be/S6pYTqRmI7U)
    Tetralith  |SSH         |[Here](https://youtu.be/OBT9XuVktwg)

### Exercise 0: pick a Zoom room

We will use breakout rooms, as this is best for learning.
Ideally, each breakout room has 2 learners for the same HPC cluster.
As it cannot be predicted how many learners show up per cluster,
we do this dynamically:

- Go to the main breakout room of your HPC cluster

HPC cluster name|Main breakout room
----------------|------------------
Alvis           |Room 1
Bianca          |Room 2
COSMOS          |Room 3
Dardel          |Room 4
Kebnekaise      |Room 5
LUMI            |Room 6
Rackham         |Room 7
Tetralith       |Room 8

- When the main breakout room reaches 4 learners, decide upon 2 to
  move to a free breakout room. Repeat until the group size is below 4.
- When you are the only one in your main breakout room,
  the teachers will let you decide to either work in silence or
  to join another group. You will be taken care of well :-)

### Exercise 1: login to your HPC cluster

Go to the documentation of your HPC cluster
and search for the login procedure(s).

Then answer these questions:

- Login to an interactive session (e.g. SSH) on your HPC cluster

???- question "Answer"

    The documentation for your HPC cluster can be found at:

    HPC Cluster|Link to documentation
    -----------|------------------------------------------------------
    Alvis      |[here](https://www.c3se.chalmers.se/)
    Bianca     |[here](https://docs.uppmax.uu.se)
    COSMOS     |[here](https://lunarc-documentation.readthedocs.io/en/latest/)
    Dardel     |[here](https://support.pdc.kth.se/doc/)
    Kebnekaise |[here](https://docs.hpc2n.umu.se)
    LUMI       |[here](https://docs.lumi-supercomputer.eu/)
    Rackham    |[here](https://docs.uppmax.uu.se)
    Tetralith  |[here](https://www.nsc.liu.se/support/systems/tetralith-getting-started/)

    From there, searching for, for example,
    'login' or 'connecting', you will find information
    on how to do so.

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Link to documentation
    -----------|------------------------------------------------------
    Alvis      |[here](https://www.c3se.chalmers.se/documentation/connecting/)
    Bianca     |[here](https://docs.uppmax.uu.se/getting_started/login_bianca_console_password/)
    COSMOS     |[here](https://lunarc-documentation.readthedocs.io/en/latest/getting_started/login_howto/)
    Dardel     |[here](https://support.pdc.kth.se/doc/basics/quickstart/)
    Kebnekaise |[here](https://docs.hpc2n.umu.se/documentation/access/#login__and__file__transfer)
    LUMI       |[here](https://docs.lumi-supercomputer.eu/firststeps/loggingin/) and [here](https://docs.lumi-supercomputer.eu/firststeps/loggingin-webui/)
    Rackham    |[here](http://docs.uppmax.uu.se/getting_started/login_rackham/)
    Tetralith  |[here](https://www.nsc.liu.se/support/getting-started/)

    <!-- markdownlint-enable MD013 -->

### Exercise 2: load the Python module

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
Rackham    |`3.12.7`
Tetralith  |`3.10.4`


???- question "Answer"

    From the documentation of your center, searching for, for example,
    'Python module',
    you will find information on how to load the Python module.

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Link to documentation                                                                                                                                          |Solution
    -----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------
    Alvis      |[short](https://www.c3se.chalmers.se/documentation/module_system/python_example/) or [long](https://www.c3se.chalmers.se/documentation/module_system/modules/) |`module load Python/3.12.3-GCCcore-13.3.0`
    Bianca     |[here](https://docs.uppmax.uu.se/software/python/#loading-python)                                                                                              |`module load python/3.11.4`
    COSMOS     |[here](https://lunarc-documentation.readthedocs.io/en/latest/guides/applications/Python/)                                                                      |`module load GCCcore/13.2.0 Python/3.11.5`
    Dardel     |:warning: [here](https://support.pdc.kth.se/doc/software/module/) and [here](https://support.pdc.kth.se/doc/applications/python/)                              |`module load bioinfo-tools python/3.11.4`
    Kebnekaise |[here](https://docs.hpc2n.umu.se/software/userinstalls/#python__packages)                                                                                      |`module load GCC/12.3.0 Python/3.11.3`
    LUMI       |[here](https://docs.lumi-supercomputer.eu/software/installing/python/#use-the-cray-python-module)                                                              |`module load cray-python/3.11.7`
    Rackham    |[here](http://docs.uppmax.uu.se/software/python/)                                                                                                              |`module load python/3.12.7`
    Tetralith  |[here](https://www.nsc.liu.se/software/python/)                                                                                                                |`module load Python/3.10.4-env-hpc2-gcc-2022a-eb`

    <!-- markdownlint-enable MD013 -->

    - :warning: means that the documentation does not clearly answer
      this question.
      You may find that you can piece it together easily enough or
      you may find that you cannot.
      You are encouraged
      to contact your HPC center to help them help you better

### Exercise 3: start the Python interpreter

Go to the documentation of your HPC cluster
and start the Python interpreter.

???- question "Answer"

    From the documentation of your center, searching for, for example,
    'Python' or 'Python interpreter',
    you may find information on how to start the Python interpreter.

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Link to documentation                                                                              |Solution
    -----------|---------------------------------------------------------------------------------------------------|--------
    Alvis      |:warning:                                                                                          |`python`
    Bianca     |[here](https://docs.uppmax.uu.se/software/python/#loading-python)                                  |`python`
    COSMOS     |:warning:                                                                                          |`python`
    Dardel     |:warning: [here](https://support.pdc.kth.se/doc/applications/python/)                              |`python`
    Kebnekaise |:warning:                                                                                          |`python`
    LUMI       |:warning: [here](https://docs.lumi-supercomputer.eu/software/installing/python/)                   |`python`
    Rackham    |[here](https://docs.uppmax.uu.se/software/python/#loading-python)                                  |`python`
    Tetralith  |[here](https://www.nsc.liu.se/software/python/)                                                    |`python`

    <!-- markdownlint-enable MD013 -->

    - :warning: for this specific question means that the documentation does
      not answer this (or the answer is hiding in more complicated examples).
      You may find this an acceptable omission or you may not.
      You are encouraged
      to contact your HPC center to help them help you better

???- question "Cannot get this to work?"

    If there is no time to get this fixed during the course,
    you can also use Python on your local computer.

### Exercise 4: run a 'Hello world' program

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
