# Introduction 'Getting it to run'

![Python logo from https://www.python.org/community/logos/](python_logo.png)

This course day allows you to program in basic Python on
an HPC cluster.

!!! info "Learning outcomes"

    - Learners have read what they will learn
    - Learners can find how to download and extract the exercises
    - Learners understand how this day is organized

???- question "For teachers: Lesson plan"

    Prior questions:

    - What is Pyton?
    - What are features of the Python language?
    - In the term 'HPC cluster', what does 'cluster' mean?
    - In the term 'HPC cluster', what does 'HPC' mean?
    - What are features of HPC clusters?

???- question "Overview of these sessions as a concept map"

    ```mermaid
    flowchart TD
        python[[Python]]

        %% Give a white background to all nodes, instead of a transparent one
        classDef node fill:#fff,color:#000,stroke:#000

        subgraph sub_programming_language[Programming language]
          interpreted_language[Interpreted language]
          programming_language[Programming language]
          scripting_language[Scripting language]
          interpreter[Interpreter]
          scripts[Scripts]
          text_files[Text files]
        end
        style sub_programming_language fill:#ccf,color:#000,stroke:#fcc

        subgraph sub_programming_terms[Programming terms]
          user_input[User input]
          %% file_io[File I/O]
          %% command_line_arguments[Command-line arguments]
          variables[Variables]
          operators[Operators]
          %% functions[Functions]
          python_packages[Python packages]
          %% graphics[Graphics]
        end
        style sub_programming_terms fill:#cfc,color:#000,stroke:#fcc

        subgraph sub_naiss[NAISS]
          your_hpc_center[Your HPC center]
          modules[software modules]
          your_hpc_cluster[Your HPC cluster]
          text_editors[Text editors]
          %% x_forwarding[X-forwarding]
          %% remote_desktop[Remote desktop]
        end
        style sub_naiss fill:#fcc,color:#000,stroke:#fcc

        python --> |is a| programming_language
        python --> |is a| interpreted_language
        python --> |is a| scripting_language

        programming_language --> |uses| text_files
        interpreted_language --> |has a| interpreter
        scripting_language --> |is|interpreted_language
        scripting_language --> |runs| scripts
        scripts --> |are| text_files
        %% scripts --> |can use| command_line_arguments

        python --> |has| python_packages
        python --> |has| variables
        %%python --> |has| functions
        python --> |has| operators
        %%functions --> |use| variables
        operators --> |work on| variables
        %%python_packages --> |allow| graphics
        python_packages --> |allow to use| user_input
        %% python_packages --> |allow to do| file_io
        %% python_packages --> |allow to use| command_line_arguments

        your_hpc_center --> |has| your_hpc_cluster
        your_hpc_cluster --> |have| modules
        your_hpc_cluster --> |have| text_editors
        %% your_hpc_cluster --> |allow| x_forwarding
        %% your_hpc_cluster --> |has| remote_desktop
        modules --> |allow the use of| python_packages
        modules --> |allow the use of| interpreter

        text_editors --> |work on|text_files
        %%x_forwarding --> |allows|graphics
        %%remote_desktop --> |allows|graphics


        variables ~~~ your_hpc_center
    ```

## Why is this course important?

Python, according to [the TIOBE index](https://www.tiobe.com/tiobe-index/)
is one of the most used programming languages at this day.

Running Python on an HPC cluster allows scientists to
run their code that needs either (1) massive computation,
(2) massive storage space, and/or (3) storage of sensitive data.

This course allows you to do your analysis, in one of the
most used programming languages at this day,
using some of the most advanced hardware we have at this day.

## Sessions

The sessions 'Getting it to run' allow you to run Python on
an HPC cluster:

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Session name                                                   |Goal
---------------------------------------------------------------|---------------------------------------------------
[Using the Python interpreter](using_the_python_interpreter.md)|Run Python on HPC
[Working with Python scripts](working_with_python_scripts.md)  |Run a Python script on HPC
[Graphics](graphics.md)                                        |Run a Python script with something graphical on HPC

<!-- markdownlint-enable MD013 -->

The later sessions focus on learning Python.

## Exercises

## Exercise 1: add your HPC cluster to your name

Change your Zoom name, to include your HPC cluster and favorite
programming language, e.g. make `Sven` into `Sven [Alvis]`.

You can do so by right-click on the video of yourself,
then click 'Rename' to change your Zoom name.

## Exercise 2: the learning outcomes of today

The goal of this exercise is to find out
what you will learn today.

- Go to this form [TODO](https://github.com/UPPMAX/naiss_intro_python/issues/22)
  and fill it in

???- question "For teachers: what is in that form?"

    With this exercise, we'll discover what we'll learn today.

    Give you confidence levels of the following statements,
    using this scale:

    - 0: I don't know even what this is about ...?
    - 1: I have no confidence I can do this
    - 2: I have low confidence I can do this
    - 3: I have some confidence I can do this
    - 4: I have good confidence I can do this
    - 5: I absolutely can do this!

    Give you confidence levels of the following statements below:

    - I am comfortable using the documentation of my HPC center
    - I am comfortable using a Python book
    - I am comfortable learning Python
    - I can load a Python version on my HPC cluster
    - I can describe what the Python interpreter is
    - I can use a text editor on my HPC cluster
    - I can create a Python script
    - I can run a Python script
    - In Python, I can create a variable
    - In Python, I can use a variable
    - I can convert a simple equation to Python code
    - In Python, I can find and use the operator for exponentiation
    - In Python, I know what the modulo operator is and when to use it
    - I can convert a simple text question to Python code

## (optional) Exercise 3: where is what?

Explore the website of the course. Where you can you find
the things below?

- The schedule
- Further learning
- The frequently asked questions
- Earlier evaluation results
