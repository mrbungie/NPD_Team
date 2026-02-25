root <- getwd()
in_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase1")
plot_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase2", "plots")
table_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase2", "tables")
dir.create(plot_dir, recursive = TRUE, showWarnings = FALSE)
dir.create(table_dir, recursive = TRUE, showWarnings = FALSE)

if (!requireNamespace("ggplot2", quietly = TRUE)) stop("Package ggplot2 is required")

svc <- read.csv(file.path(in_dir, "q2_unmet_by_service_age.csv"), stringsAsFactors = FALSE)
proxy <- read.csv(file.path(in_dir, "q2_complexity_proxy_by_age.csv"), stringsAsFactors = FALSE)

svc$service <- svc$hlthcare_code
svc$service[svc$service == "HC_MED"] <- "Medical care"
svc$service[svc$service == "HC_DENT"] <- "Dental care"
svc$service[svc$service == "HC_MENT"] <- "Mental health"
svc$service[svc$service == "MG_PMEDS"] <- "Prescribed medicines"

age_order <- c("Y15-24", "Y25-34", "Y35-44", "Y45-54", "Y55-64", "Y65-74", "Y_GE75")
svc <- svc[svc$age_code %in% age_order, ]
proxy <- proxy[proxy$age_code %in% age_order, ]
svc$age_code <- factor(svc$age_code, levels = age_order)
proxy$age_code <- factor(proxy$age_code, levels = age_order)

write.csv(svc, file.path(table_dir, "q2_unmet_by_service_age.csv"), row.names = FALSE)
write.csv(proxy, file.path(table_dir, "q2_complexity_proxy_by_age.csv"), row.names = FALSE)

md <- file.path(table_dir, "q2_complexity_proxy_by_age.md")
cat("| age_code | complexity_proxy_unmet_mean |\n|---|---:|\n", file = md)
for (i in seq_len(nrow(proxy))) {
  cat(sprintf("| %s | %.2f |\n", as.character(proxy$age_code[i]), proxy$complexity_proxy_unmet_mean[i]), file = md, append = TRUE)
}

p <- ggplot2::ggplot(svc, ggplot2::aes(x = service, y = age_code, fill = unmet_pct)) +
  ggplot2::geom_tile(color = "white", linewidth = 0.3) +
  ggplot2::geom_text(ggplot2::aes(label = sprintf("%.1f", unmet_pct)), size = 3) +
  ggplot2::scale_fill_gradient(low = "#f7fbff", high = "#08306b") +
  ggplot2::labs(
    title = "Q2: Diagnostic odyssey proxy by age and service",
    subtitle = "Unmet need (%) in Italy, 2019",
    x = "Service type",
    y = "Age group",
    fill = "% unmet"
  ) +
  ggplot2::theme_minimal(base_size = 12) +
  ggplot2::theme(panel.grid = ggplot2::element_blank())

ggplot2::ggsave(file.path(plot_dir, "q2_complexity_heatmap_age_service.png"), p, width = 11, height = 7, dpi = 170)
ggplot2::ggsave(file.path(plot_dir, "q2_complexity_heatmap_age_service.pdf"), p, width = 11, height = 7)

cat("phase2 q2 improved done\n")
