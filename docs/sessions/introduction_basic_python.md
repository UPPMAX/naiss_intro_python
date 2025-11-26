# Introduction 'Basic Python'

![Python logo from https://www.python.org/community/logos/](python_logo.png)

This part of the course day allows you to start learning Python
and is aimed at complete beginners.

You can develop in Python on an HPC cluster, or on your computer:
both are equally fine.

!!! info "Learning outcomes"

    - Understand the learning outcomes of this part of the day
    - Understand how this part of the day is organized

???- info "A concept map to show how all themes are connected"

  ```mermaid
  flowchart TD
    python[[Python]]

    user_input[User input]
    file_io[File I/O]
    command_line_arguments[Command-line arguments]
    variables[Variables]
    operators[Operators]
    functions[Functions]
    python_packages[Python packages]
    graphics[Graphics]


    python --> |has| python_packages
    python --> |has| variables
    python --> |has| functions
    python --> |has| operators
    functions --> |use| variables
    operators --> |work on| variables
    python_packages --> |allow| graphics
    python_packages --> |allow to use| user_input
    python_packages --> |allow to do| file_io
    python_packages --> |allow to use| command_line_arguments
  ```


<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

In these sessions, we use the book
[How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html).

As you and your fellow learners will have different initial skills,
you are encouraged to work through this book as fast as you like:
there will be time for any individual question in breakout rooms.

This will be the progression followed by the teacher,
as this is deemed most important to academics:

<!-- markdownlint-enable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Hour|Book chapter                                                                                  |Goal
----|----------------------------------------------------------------------------------------------|--------------------------
1   |[The Way of the Program](the_way_of_the_program.md)                                           |Introduces Python from the very start
2   |[Variables, expressions and statements, variables](variables_expressions_and_statements_1.md) |Introduces basic Python concepts
2   |[Variables, expressions and statements, operators](variables_expressions_and_statements_2.md) |.
2   |[Variables, expressions and statements, user input](variables_expressions_and_statements_3.md)|.
3   |[File IO](files.md)                                                                           |Write to a file

<!-- markdownlint-disable MD013 -->

Recommended next chapters for academics are:

<!-- markdownlint-enable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Book chapter                                        |Goal
----------------------------------------------------|--------------------------------
[Command line arguments](command_line_arguments.md) |Create scripts that can be called with arguments
[Functions](functions.md)                           |Structure your code

<!-- markdownlint-disable MD013 -->

