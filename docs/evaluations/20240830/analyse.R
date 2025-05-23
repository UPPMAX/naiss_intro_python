#!/bin/env Rscript

t <- readr::read_csv("survey.csv")
names(t)
t$Timestamp <- NULL
t$`Any other feedback?` <- NULL
# tail(names(t))
questions <- stringr::str_remove(
  stringr::str_remove(
    names(t), 
    "Untitled Question \\["),
  "\\]"
)
#new_names <- c(
#  paste0("q0", seq(1, 9)),
#  paste0("q", seq(10, 16))
#)
new_names <- questions
names(t) <- new_names

t$i <- seq(1, nrow(t))

names(t)
t_tidy <- tidyr::pivot_longer(t, cols = starts_with("I", ignore.case = FALSE))
names(t_tidy)
names(t_tidy) <- c("i", "question", "answer")
t_tidy

n_individuals <- length(unique(t_tidy$i))
n_ratings <- length(t_tidy$answer[!is.na(t_tidy$answer)])

mean_confidence <- mean(t_tidy$answer[!is.na(t_tidy$answer)])

ggplot2::ggplot(t_tidy, ggplot2::aes(x = answer)) +
  ggplot2::geom_histogram() + 
  ggplot2::labs(
    title = "All confidences",
    caption = paste0(
      "#individuals: ", n_individuals, ". ",
      "#ratings: ", n_ratings, ". ",
      "Mean confidence: ", round(mean_confidence, digits = 2)
    )
  )

ggplot2::ggsave(filename = "all_confidences.png", width = 4, height = 2)

ggplot2::ggplot(t_tidy, ggplot2::aes(x = answer)) +
  ggplot2::geom_histogram() + 
  ggplot2::facet_grid(rows = "question", scales = "free_y") +
  ggplot2::theme(
    strip.text.y = ggplot2::element_text(angle = 0),
    legend.position = "none"
  ) +
  ggplot2::labs(
    title = "Confidences per question"
  )

ggplot2::ggsave(filename = "confidences_per_question.png", width = 6, height = 7)

names(t_tidy)

readr::write_csv(x = dplyr::tally(dplyr::group_by(t_tidy, question, answer)), file = "tally.csv")

# Averag

average_confidences <- dplyr::group_by(t_tidy, question) |> dplyr::summarise(mean = mean(answer))
  
readr::write_csv(average_confidences, file = "average_confidences.csv")

ggplot2::ggplot(average_confidences, ggplot2::aes(y = question, x = mean)) +
  ggplot2::geom_bar(stat = "identity") 

ggplot2::ggsave(filename = "average_confidences_per_question.png", width = 6, height = 7)

# Success score

t_sessions_taught <- c(
  "I am comfortable learning Python",
  "I am comfortable using the Python book",
  "I am comfortable using the UPPMAX documentation",
  "I can convert a simple equation to Python code",
  "I can convert a simple text question to Python code",
  "I can create a Python script",
  "I can describe what a program is",
  "I can describe what the Python interpreter is",
  "I can describe what the Python programming language is",
  "I can find and use a Python module on Rackham",
  "I can load a Python version on Rackham",
  "I can login to Rackham",
  "I can run a Python script",
  "I can start an interactive session on Rackham",
  "I can use a text editor on Rackham",
  "In Python, I can ask a user for input",
  "In Python, I can create a file",
  "In Python, I can create a variable",
  "In Python, I can read a file",
  "In Python, I can use a variable",
  "In Python, I can use user input in a calculation",
  "In Python, I know what the modulo operator is and when to use it"
)

testthat::expect_true(all(t_sessions_taught %in% t_tidy$question))

confidences_on_taught_sessions <- t_tidy |> dplyr::filter(question %in% t_sessions_taught)
success_score <- mean(confidences_on_taught_sessions$answer) / 5.0
readr::write_lines(x = success_score, "success_score.txt")

