# Working with Python scripts

!!!- info "Learning outcomes"

    - Practice using the documentation of your HPC cluster
    - To be able to create a Python script
    - To be able to run a Python script

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the documentation of their HPC cluster
    - Learners have created a Python script
    - Learners have run a Python script

    Other goals are:

    - Verify that learners indeed have learned how to create a file
    - Verify that learners indeed have learned how to use a text editor

    Lesson plan:

    - 5 mins: prior knowledge
    - 5 mins: presentation
    - 15 mins: challenge
    - 5 mins: feedback

    Prior questions:

    - Why would you want to use a script?
    - In which languages can one write a script?
    - How does one run a script?

## Why?

You have multiple lines of code you want a computer to run.
Instead of copy-pasting these lines individually to the
interpreter, one can use a script.

To run code, we use text files that are run as if each line
was typed in into the Python interpreter. Such text files
that run (interpreted) code are called 'scripts'.

In this session, we practice to create and run some simple Python scripts,
without new theory.

## Exercises

???- question "Enjoy a video?"

    You can find a video with solutions to these exercises:

    HPC Cluster|YouTube video
    -----------|-------------------------------------
    Alvis      |.
    Bianca     |.
    COSMOS     |.
    Dardel     |.
    Kebnekaise |.
    LUMI       |.
    Pelle      |.
    Tetralith  |.

## Exercise 1: create a Python script

Go to the documentation of your HPC cluster,
then answer the questions below. If you cannot find any helpful
information, use
[the UPPMAX documentation about `nano`](https://docs.uppmax.uu.se/software/nano/)

- On your HPC cluster, create a file called `hello_world.py`,
  using a text editor or Linux commands

???- question "Answer"

    Creating a Python script `hello_world.py` using `nano`:

    ```bash
    nano hello_world.py
    ```

- Copy-paste the following content into the script:

```python
print('Hello, world!')
```

???- question "Answer"

    To paste into a terminal, use `CTRL + SHIFT + V` (i.e. add `SHIFT`).

- Save the script

???- question "Answer"

    In [`nano`](https://docs.uppmax.uu.se/software/nano/), you can do
    so with `CTRL + O`

- Close the text editor

???- question "Answer"

    In [`nano`](https://docs.uppmax.uu.se/software/nano/), you can do
    so with `CTRL + X`

- Verify that the script has its contents saved

???- question "Answer"

    One way to do so, is to use `nano` to open the file again:

    ```bash
    nano hello_world.py
    ```

## Exercise 2: run a Python script



- For your favorite HPC center, find the documentation on how to run
  a Python script. Search **for a maximum of 5 minutes **!
  If you cannot find it,
  [the UPPMAX documentation about how to run a Python script](https://docs.uppmax.uu.se/software/python/#use-python-to-run-a-python-script).

???- question "Answer"

    From the documentation of your center, searching for, for example,
    'Python script', you will find information on how to start a the Python script.

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    HPC Cluster|Documentation                                                                                                                                                                             |Solution
    -----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------
    Alvis      |[Short documentation](https://www.c3se.chalmers.se/documentation/module_system/python_example/) or [long documentation](https://www.c3se.chalmers.se/documentation/module_system/modules/)|.
    Bianca     |[Documentation](https://docs.uppmax.uu.se/software/python/#use-python-to-run-a-python-script)                                                                                             |`python hello_world.py`
    COSMOS     |[Documentation](https://lunarc-documentation.readthedocs.io/en/latest/guides/applications/Python/)                                                                                        |.
    Dardel     |:warning: [Documentation](https://support.pdc.kth.se/doc/software/module/) and [more documentation](https://support.pdc.kth.se/doc/applications/python/)                                  |.
    Kebnekaise |[Documentation](https://docs.hpc2n.umu.se/software/userinstalls/#python__packages)                                                                                                        |.
    LUMI       |[Documentation](https://docs.lumi-supercomputer.eu/software/installing/python/#use-the-cray-python-module)                                                                                |.
    Pelle      |[Documentation](https://docs.uppmax.uu.se/software/python/#use-python-to-run-a-python-script)                                                                                             |`python hello_world.py`
    Tetralith  |:warning: [Documentation](https://www.nsc.liu.se/software/python/)                                                                                                                        |`python hello_world.py`

    <!-- markdownlint-enable MD013 -->

    - :warning: means that the documentation does not clearly answer
      this question.
      You may find that you can piece it together easily enough or
      you may find that you cannot.
      You are encouraged
      to contact your HPC center to help them help you better

- Run the Python script you just created

???- question "Answer"

    You can run this Python script in the shell by:

    ```bash
    python hello_world.py
    ```

