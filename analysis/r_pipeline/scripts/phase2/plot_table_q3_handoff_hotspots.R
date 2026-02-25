root <- getwd()
in_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase1")
plot_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase2", "plots")
table_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase2", "tables")
dir.create(plot_dir, recursive = TRUE, showWarnings = FALSE)
dir.create(table_dir, recursive = TRUE, showWarnings = FALSE)

if (!requireNamespace("ggplot2", quietly = TRUE)) stop("Package ggplot2 is required")

risk <- read.csv(file.path(in_dir, "q3_handoff_risk_hotspots_by_age.csv"), stringsAsFactors = FALSE)
age_order <- c("Y15-24", "Y25-34", "Y35-44", "Y45-54", "Y55-64", "Y65-74", "Y_GE75")
risk <- risk[risk$age_code %in% age_order, ]
risk$age_code <- factor(risk$age_code, levels = age_order)
risk$risk_band <- ifelse(risk$handoff_risk_index >= 0, "Higher than average", "Lower than average")

tbl <- risk[, c("age_code", "wait_unmet_pct", "service_unmet_pct", "handoff_risk_index")]
tbl$wait_unmet_pct <- round(tbl$wait_unmet_pct, 2)
tbl$service_unmet_pct <- round(tbl$service_unmet_pct, 2)
tbl$handoff_risk_index <- round(tbl$handoff_risk_index, 3)
write.csv(tbl, file.path(table_dir, "q3_handoff_risk_hotspots_by_age.csv"), row.names = FALSE)

md <- file.path(table_dir, "q3_handoff_risk_hotspots_by_age.md")
cat("| age_code | wait_unmet_pct | service_unmet_pct | handoff_risk_index |\n|---|---:|---:|---:|\n", file = md)
for (i in seq_len(nrow(tbl))) {
  cat(sprintf("| %s | %.2f | %.2f | %.3f |\n", as.character(tbl$age_code[i]), tbl$wait_unmet_pct[i], tbl$service_unmet_pct[i], tbl$handoff_risk_index[i]), file = md, append = TRUE)
}

p <- ggplot2::ggplot(risk, ggplot2::aes(x = handoff_risk_index, y = age_code, fill = risk_band)) +
  ggplot2::geom_col(width = 0.75) +
  ggplot2::geom_vline(xintercept = 0, linetype = "dashed", color = "gray30") +
  ggplot2::scale_fill_manual(values = c("Higher than average" = "#d7301f", "Lower than average" = "#3182bd")) +
  ggplot2::labs(
    title = "Q3: Handoff risk hotspots by age",
    subtitle = "Composite index from waiting-list unmet need + service unmet need (Italy, 2019)",
    x = "Handoff risk index (standardized)",
    y = "Age group",
    fill = "Risk band"
  ) +
  ggplot2::theme_minimal(base_size = 12) +
  ggplot2::theme(panel.grid.minor = ggplot2::element_blank())

ggplot2::ggsave(file.path(plot_dir, "q3_handoff_hotspots_by_age.png"), p, width = 11, height = 7, dpi = 170)
ggplot2::ggsave(file.path(plot_dir, "q3_handoff_hotspots_by_age.pdf"), p, width = 11, height = 7)

cat("phase2 q3 improved done\n")
