root <- getwd()
in_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase1")
plot_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase2", "plots")
table_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase2", "tables")
dir.create(plot_dir, recursive = TRUE, showWarnings = FALSE)
dir.create(table_dir, recursive = TRUE, showWarnings = FALSE)

if (!requireNamespace("ggplot2", quietly = TRUE)) stop("Package ggplot2 is required")

df <- read.csv(file.path(in_dir, "q1_access_outcome_joined.csv"), stringsAsFactors = FALSE)
df <- df[order(as.integer(df$time_code)), ]

tbl <- data.frame(
  year = as.integer(df$time_code),
  unmet_wait_pct = round(df$unmet_wait_pct, 2),
  health_spend_pct_gdp = round(df$health_spend_pct_gdp, 2),
  stringsAsFactors = FALSE
)

write.csv(tbl, file.path(table_dir, "q1_access_outcome_summary.csv"), row.names = FALSE)
md <- file.path(table_dir, "q1_access_outcome_summary.md")
cat("| year | unmet_wait_pct | health_spend_pct_gdp |\n|---:|---:|---:|\n", file = md)
for (i in seq_len(nrow(tbl))) {
  cat(sprintf("| %d | %.2f | %.2f |\n", tbl$year[i], tbl$unmet_wait_pct[i], tbl$health_spend_pct_gdp[i]), file = md, append = TRUE)
}

long <- rbind(
  data.frame(year = as.integer(df$time_code), metric = "Unmet need due to waiting list (%)", value = df$unmet_wait_pct, stringsAsFactors = FALSE),
  data.frame(year = as.integer(df$time_code), metric = "Health expenditure (% GDP)", value = df$health_spend_pct_gdp, stringsAsFactors = FALSE)
)

p <- ggplot2::ggplot(long, ggplot2::aes(x = factor(year), y = value, fill = factor(year))) +
  ggplot2::geom_col(width = 0.65, show.legend = FALSE) +
  ggplot2::geom_text(ggplot2::aes(label = sprintf("%.1f", value)), vjust = -0.35, size = 3.8) +
  ggplot2::facet_wrap(~ metric, scales = "free_y") +
  ggplot2::scale_fill_manual(values = c("2014" = "#6baed6", "2019" = "#2171b5")) +
  ggplot2::labs(
    title = "Q1: Access pressure vs system outcome proxy (Italy)",
    subtitle = "Official Eurostat indicators (2014 vs 2019)",
    x = "Year",
    y = "Value"
  ) +
  ggplot2::theme_minimal(base_size = 12) +
  ggplot2::theme(panel.grid.minor = ggplot2::element_blank())

ggplot2::ggsave(file.path(plot_dir, "q1_access_outcome_bars.png"), p, width = 12, height = 6, dpi = 160)
ggplot2::ggsave(file.path(plot_dir, "q1_access_outcome_bars.pdf"), p, width = 12, height = 6)

cat("phase2 q1 improved done\n")
