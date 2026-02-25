root <- getwd()
in_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase1")
plot_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase2", "plots")
table_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase2", "tables")
dir.create(plot_dir, recursive = TRUE, showWarnings = FALSE)
dir.create(table_dir, recursive = TRUE, showWarnings = FALSE)

if (!requireNamespace("ggplot2", quietly = TRUE)) stop("Package ggplot2 is required")

fin <- read.csv(file.path(in_dir, "q5_financing_shares_over_time.csv"), stringsAsFactors = FALSE)
fin <- fin[order(as.integer(fin$time_code), fin$icha11_hf_code), ]

fin$scheme <- fin$icha11_hf_code
fin$scheme[fin$scheme == "HF1"] <- "Public/compulsory"
fin$scheme[fin$scheme == "HF2"] <- "Voluntary"
fin$scheme[fin$scheme == "HF3"] <- "Out-of-pocket"

tbl <- fin[, c("time_code", "scheme", "share_pct")]
tbl$share_pct <- round(tbl$share_pct, 2)
write.csv(tbl, file.path(table_dir, "q5_financing_shares_over_time.csv"), row.names = FALSE)

latest_year <- max(as.integer(fin$time_code), na.rm = TRUE)
latest <- fin[as.integer(fin$time_code) == latest_year, c("scheme", "share_pct")]
latest$share_pct <- round(latest$share_pct, 2)
write.csv(latest, file.path(table_dir, "q5_financing_shares_latest.csv"), row.names = FALSE)

md <- file.path(table_dir, "q5_financing_shares_latest.md")
cat(sprintf("# Latest year: %d\n\n", latest_year), file = md)
cat("| scheme | share_pct |\n|---|---:|\n", file = md, append = TRUE)
for (i in seq_len(nrow(latest))) {
  cat(sprintf("| %s | %.2f |\n", latest$scheme[i], latest$share_pct[i]), file = md, append = TRUE)
}

p <- ggplot2::ggplot(fin, ggplot2::aes(x = as.integer(time_code), y = share_pct, fill = scheme)) +
  ggplot2::geom_col(width = 0.75) +
  ggplot2::scale_fill_manual(values = c("Public/compulsory" = "#1f78b4", "Voluntary" = "#ff7f00", "Out-of-pocket" = "#e31a1c")) +
  ggplot2::labs(
    title = "Q5: Financing mix over time (Italy)",
    subtitle = "Share of current health expenditure (%)",
    x = "Year",
    y = "% of CHE",
    fill = "Financing scheme"
  ) +
  ggplot2::theme_minimal(base_size = 12)

ggplot2::ggsave(file.path(plot_dir, "q5_financing_shares_stacked.png"), p, width = 12, height = 7, dpi = 170)
ggplot2::ggsave(file.path(plot_dir, "q5_financing_shares_stacked.pdf"), p, width = 12, height = 7)

cat("phase2 q5 improved done\n")
