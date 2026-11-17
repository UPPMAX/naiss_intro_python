#!/bin/env Rscript

t <- readr::read_csv("morning.csv", show_col_types = FALSE)
readr::write_lines(t$`Any other feedback?`, "morning_feedback.txt")
t$`Any other feedback?` <- NULL
t_long <- tidyr::pivot_longer(t, cols = starts_with("What"))
names(t_long) <- c("t", "skill", "can")
t_long$skill <- stringr::str_match(t_long$skill, "What have we achieved\\? \\[(.*)\\]")[, 2]
t_long$skill <- as.factor(t_long$skill)

ggplot2::ggplot(t_long, ggplot2::aes(x = can)) +
  ggplot2::geom_histogram(stat = "count") +
  ggplot2::facet_grid(skill ~ .) +
  ggplot2::scale_y_continuous(breaks = seq(0, 20)) +
  ggplot2::theme(strip.text.y = ggplot2::element_text(angle = 0))
ggplot2::ggsave("skills_morning.svg")

t <- readr::read_csv("afternoon.csv", show_col_types = FALSE)
readr::write_lines(t$`Any other feedback`, "afternoon_feedback.txt")
t$`Any other feedback` <- NULL
t_long <- tidyr::pivot_longer(t, cols = starts_with("What"))
names(t_long) <- c("t", "skill", "can")
t_long$skill <- stringr::str_match(t_long$skill, "What have we achieved\\? \\[(.*)\\]")[, 2]
t_long$skill <- as.factor(t_long$skill)

ggplot2::ggplot(t_long, ggplot2::aes(x = can)) +
  ggplot2::geom_histogram(stat = "count") +
  ggplot2::facet_grid(skill ~ .) +
  ggplot2::scale_y_continuous(breaks = seq(0, 20)) +
  ggplot2::theme(strip.text.y = ggplot2::element_text(angle = 0))
ggplot2::ggsave("skills_afternoon.svg")
