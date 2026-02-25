root <- getwd()
in_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase1")
plot_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase2", "plots")
table_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase2", "tables")
dir.create(plot_dir, recursive = TRUE, showWarnings = FALSE)
dir.create(table_dir, recursive = TRUE, showWarnings = FALSE)

if (!requireNamespace("ggplot2", quietly = TRUE)) stop("Package ggplot2 is required")

eq <- read.csv(file.path(in_dir, "q4_unmet_by_education.csv"), stringsAsFactors = FALSE)
gap <- read.csv(file.path(in_dir, "q4_equity_gap_by_time.csv"), stringsAsFactors = FALSE)

eq$edu_group <- eq$isced11_code
eq$edu_group[eq$edu_group == "ED0-2"] <- "Low education"
eq$edu_group[eq$edu_group == "ED3_4"] <- "Medium education"
eq$edu_group[eq$edu_group == "ED5-8"] <- "High education"

tbl <- eq[, c("time_code", "edu_group", "unmet_pct")]
tbl$unmet_pct <- round(tbl$unmet_pct, 2)
write.csv(tbl, file.path(table_dir, "q4_unmet_by_education.csv"), row.names = FALSE)

gap_out <- gap
gap_out$equity_gap_low_minus_high <- round(gap_out$equity_gap_low_minus_high, 2)
write.csv(gap_out, file.path(table_dir, "q4_equity_gap_by_time.csv"), row.names = FALSE)

md <- file.path(table_dir, "q4_equity_gap_by_time.md")
cat("| year | low_edu_unmet_pct | high_edu_unmet_pct | equity_gap_low_minus_high |\n|---:|---:|---:|---:|\n", file = md)
for (i in seq_len(nrow(gap_out))) {
  cat(sprintf("| %s | %.2f | %.2f | %.2f |\n", gap_out$time_code[i], gap_out$low_edu_unmet_pct[i], gap_out$high_edu_unmet_pct[i], gap_out$equity_gap_low_minus_high[i]), file = md, append = TRUE)
}

p1 <- ggplot2::ggplot(eq, ggplot2::aes(x = as.integer(time_code), y = unmet_pct, color = edu_group)) +
  ggplot2::geom_line(linewidth = 1) +
  ggplot2::geom_point(size = 2.5) +
  ggplot2::scale_color_manual(values = c("Low education" = "#d7301f", "Medium education" = "#fd8d3c", "High education" = "#2b8cbe")) +
  ggplot2::labs(
    title = "Q4: Unmet need by education level",
    subtitle = "Italy, all-reasons unmet need",
    x = "Year",
    y = "% unmet need",
    color = "Education"
  ) +
  ggplot2::theme_minimal(base_size = 12)

p2 <- ggplot2::ggplot(gap, ggplot2::aes(x = factor(time_code), y = equity_gap_low_minus_high)) +
  ggplot2::geom_col(fill = "#54278f", width = 0.6) +
  ggplot2::geom_text(ggplot2::aes(label = sprintf("%.1f", equity_gap_low_minus_high)), vjust = -0.35, size = 4) +
  ggplot2::labs(
    title = "Equity gap (low education - high education)",
    x = "Year",
    y = "Percentage points"
  ) +
  ggplot2::theme_minimal(base_size = 12)

ggplot2::ggsave(file.path(plot_dir, "q4_unmet_by_education_lines.png"), p1, width = 10, height = 6, dpi = 170)
ggplot2::ggsave(file.path(plot_dir, "q4_unmet_by_education_lines.pdf"), p1, width = 10, height = 6)
ggplot2::ggsave(file.path(plot_dir, "q4_equity_gap_bars.png"), p2, width = 8, height = 5, dpi = 170)
ggplot2::ggsave(file.path(plot_dir, "q4_equity_gap_bars.pdf"), p2, width = 8, height = 5)

cat("phase2 q4 improved done\n")
