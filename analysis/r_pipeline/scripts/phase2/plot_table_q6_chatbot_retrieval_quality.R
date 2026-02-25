root <- getwd()
in_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase1")
plot_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase2", "plots")
table_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase2", "tables")
dir.create(plot_dir, recursive = TRUE, showWarnings = FALSE)
dir.create(table_dir, recursive = TRUE, showWarnings = FALSE)

if (!requireNamespace("ggplot2", quietly = TRUE)) stop("Package ggplot2 is required")

metrics <- read.csv(file.path(in_dir, "q6_data_readiness_metrics.csv"), stringsAsFactors = FALSE)

metrics$label <- metrics$metric
metrics$label[metrics$metric == "u1_observations"] <- "EHIS UN1E observations"
metrics$label[metrics$metric == "u2_observations"] <- "EHIS UN2E observations"
metrics$label[metrics$metric == "sha_observations"] <- "SHA observations"
metrics$label[metrics$metric == "u1_distinct_age"] <- "Distinct age groups (UN1E)"
metrics$label[metrics$metric == "u2_distinct_hlthcare"] <- "Distinct service types (UN2E)"
metrics$label[metrics$metric == "sha_distinct_years"] <- "Distinct years (SHA subset)"
metrics$label[metrics$metric == "orphadata_openapi_paths"] <- "Orphadata API paths"

metrics$group <- ifelse(grepl("observations", metrics$metric), "Volume", "Coverage")

tbl <- metrics[, c("label", "group", "value")]
write.csv(tbl, file.path(table_dir, "q6_data_readiness_metrics.csv"), row.names = FALSE)

md <- file.path(table_dir, "q6_data_readiness_metrics.md")
cat("| metric | group | value |\n|---|---|---:|\n", file = md)
for (i in seq_len(nrow(tbl))) {
  cat(sprintf("| %s | %s | %.0f |\n", tbl$label[i], tbl$group[i], tbl$value[i]), file = md, append = TRUE)
}

p <- ggplot2::ggplot(metrics, ggplot2::aes(x = reorder(label, value), y = value, fill = group)) +
  ggplot2::geom_col(width = 0.72) +
  ggplot2::geom_text(ggplot2::aes(label = sprintf("%.0f", value)), hjust = -0.1, size = 3.5) +
  ggplot2::coord_flip() +
  ggplot2::facet_wrap(~ group, scales = "free", ncol = 1) +
  ggplot2::scale_fill_manual(values = c("Volume" = "#6a3d9a", "Coverage" = "#1b9e77")) +
  ggplot2::labs(
    title = "Q6: Data readiness for retrieval/routing",
    subtitle = "Official numeric sources and API surface",
    x = NULL,
    y = "Count"
  ) +
  ggplot2::theme_minimal(base_size = 12) +
  ggplot2::theme(legend.position = "none")

ggplot2::ggsave(file.path(plot_dir, "q6_data_readiness_metrics.png"), p, width = 11, height = 8, dpi = 170)
ggplot2::ggsave(file.path(plot_dir, "q6_data_readiness_metrics.pdf"), p, width = 11, height = 8)

cat("phase2 q6 improved done\n")
