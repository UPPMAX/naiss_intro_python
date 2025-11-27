# 2025-11-27

- [Lesson plan](../../lesson_plans/20251127/README.md)
- [Evaluation](../../evaluations/20251127/README.md)
- [Reflection](../../reflections/20251127/README.md)
- Number of non-duplicate registrations: 42
- Number of cancellations: unknown
- Number of active participants, whole day: 8 (19%)
- Number of evaluations: 3 (38% fill-in rate)

## Results

- [anonymous_feedback.txt](anonymous_feedback.txt)
- [survey_start.csv](survey_start.csv)
- [survey_end.csv](survey_end.csv)
- [survey_end_text_question.txt](survey_end_text_question.txt)
- [success_score.txt](success_score.txt): 90%

## Feedback

From [feedback.csv](feedback.csv):

- It's very nice to be able to through everything at your own pace,
  and still receive help/feedback on where you are,
  independent of the rest of the group.
- The instructor was so helpful and friendly and helped me a lot
  in learning new stuff and solving issues I had during the day

From [survey_end.csv](survey_end.csv):

- Great teaching!
- Great work with creating engagement

## Analysis, only end

- script used: [analyse.R](analyse.R)
- [average_confidences.csv](average_confidences.csv)
- [success_score.txt](success_score.txt)

![All confidences](all_confidences.png)

![Average confidence per question](average_confidences_per_question.png)

![Confidences per question](confidences_per_question.png)

## Analysis, pre and post

- [analyse_pre_post.R](analyse_pre_post.R)
- [stats.txt](stats.txt)

![All confidences](all_confidences_pre_post.png)

![Average confidence per question](average_confidences_per_question_pre_post.png)

![Confidence per question as boxplot](confidences_per_question_boxplot_pre_post.png)

![Confidence per question](confidences_per_question_pre_post.png)

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

|question                                                                  | mean_pre| mean_post|   p_value|different |
|:-------------------------------------------------------------------------|--------:|---------:|---------:|:---------|
|I am comfortable using the documentation of my HPC center                 | 2.888889|  4.000000| 0.3422436|FALSE     |
|I am comfortable using a Python book                                      | 3.000000|  2.666667| 1.0000000|FALSE     |
|I am comfortable learning Python                                          | 4.111111|  5.000000| 0.1400165|FALSE     |
|I can load a Python version on my HPC cluster                             | 2.777778|  5.000000| 0.0502103|FALSE     |
|I can describe what the Python interpreter is                             | 2.222222|  4.333333| 0.0598090|FALSE     |
|I can use a text editor on my HPC cluster                                 | 2.875000|  3.666667| 0.3964871|FALSE     |
|I can create a Python script                                              | 3.666667|  5.000000| 0.1480539|FALSE     |
|I can run a Python script                                                 | 3.888889|  5.000000| 0.0803306|FALSE     |
|I can run a Python script that uses a graphical library on an HPC cluster | 1.444444|  4.333333| 0.0218998|TRUE      |
|I can create and use a variable in Python                                 | 3.666667|  5.000000| 0.2251043|FALSE     |
|I can convert a simple equation to Python code                            | 3.333333|  5.000000| 0.0908019|FALSE     |
|I can convert a simple text question to Python code                       | 3.222222|  5.000000| 0.0529253|FALSE     |
|I can read and write to/from a file in Python                             | 3.777778|  4.666667| 0.2814836|FALSE     |

<!-- markdownlint-enable MD013 -->
