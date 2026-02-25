root <- getwd()
source(file.path(root, "analysis", "r_pipeline", "scripts", "jsonstat_utils.R"))
ensure_dirs(root)
out_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase1")

# Q4: Equity and variance
# Use unmet need (all reasons combined) by education level (ISCED)
u1_url <- paste0(
  "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/hlth_ehis_un1e",
  "?geo=IT&reason=FIN_FAR_TRA_WAIT&sex=T&age=TOTAL"
)

u1 <- decode_jsonstat(fetch_json(u1_url), u1_url, "q4")
eq <- u1[, c("time_code", "time_label", "isced11_code", "isced11_label", "value")]
names(eq)[5] <- "unmet_pct"

eq <- eq[eq$isced11_code %in% c("ED0-2", "ED3_4", "ED5-8"), ]

low <- eq[eq$isced11_code == "ED0-2", c("time_code", "unmet_pct")]
high <- eq[eq$isced11_code == "ED5-8", c("time_code", "unmet_pct")]
names(low)[2] <- "low_edu_unmet_pct"
names(high)[2] <- "high_edu_unmet_pct"

gap <- merge(low, high, by = "time_code", all = FALSE)
gap$equity_gap_low_minus_high <- gap$low_edu_unmet_pct - gap$high_edu_unmet_pct

safe_write(eq, file.path(out_dir, "q4_unmet_by_education.csv"))
safe_write(gap, file.path(out_dir, "q4_equity_gap_by_time.csv"))

cat("phase1 q4 numeric done\n")
