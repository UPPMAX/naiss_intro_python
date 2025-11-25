# Working with graphics

!!!- info "Learning outcomes"

    - Create a minimal plot
    - If needed: load the Matplotlib module
    - View the plot

???- question "For teachers"

    Teaching goals are:

    - Learners hear about matplotlib
    - Learners may find out again that X-forwarding is important
    - Learners again have gotten 'stuff to work'

    Lesson plan:

    - 5 mins: prior knowledge
    - 5 mins: presentation
    - 15 mins: challenge
    - 5 mins: feedback

    Prior:

    - What is meant with a plotting library?
    - What is meant with a plotting package/module?
    - Can you name a Python plotting package?

## Why use graphics?

Graphics are useful to visualize your data, e.g. in the form
of plots.

Instead of creating plots on your local computer,
in this session, we will create plots on an HPC cluster.

Matplotlib is a popular Python package to make plots.
Here we experience how easy/hard it is to use Matplotlib
on your favorite HPC cluster.
The hardest part will be to find out which
software modules to load.

For this exercise, we will use this code:

```python
import matplotlib.pyplot as plt

plt.plot([0, 1, 4, 9, 16])
plt.savefig('my_plot.png')
```

This Python code will create a minimal plot and save it to file.

??? question "How does that plot look like?"

    ![The minimal plot](working_with_graphics_plot.png)

    This is the minimal plot as created by the code above.

Viewing graphics from a terminal may not always work.
There are two solutions for this:

- Login to the remote desktop environment of your HPC cluster:
  a remote desktop environment has graphics enabled
- Login via SSH with X-forwarding enabled:
  this allows displaying simple graphics

In the worst case, downloading the image to your local computer is
a clumsy option that works too.

## Exercises

## Exercise 1: Use Matplotlib to show a plot

- Create a Python script called `create_plot.py`
  with the content of the example code in it.

- Run the Python script. If you get no error message, you are done.

=== "Pelle"

    ```bash
    [richel@pelle2 ~]$ python create_plot.py 
    Traceback (most recent call last):
      File "/domus/h1/richel/create_plot.py", line 1, in <module>
        import matplotlib.pyplot as plt
    ModuleNotFoundError: No module named 'matplotlib'
    ```

- If needed, load the module needed. 

=== "Pelle"

    Search [the UPPMAX documentation](https://docs.uppmax.uu.se/)
    for `Matplotlib` takes you to [the UPPMAX 'Matplotlib' documentation](https://docs.uppmax.uu.se/software/python_bundles/#matplotlib)

    ```bash
    module load matplotlib
    ```
