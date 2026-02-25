root <- getwd()
source(file.path(root, "analysis", "r_pipeline", "scripts", "jsonstat_utils.R"))
ensure_dirs(root)
out_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase1")

# Q1: Access-outcome coupling
# Access signal: unmet need due to waiting list (EHIS)
u1_url <- paste0(
  "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/hlth_ehis_un1e",
  "?geo=IT&reason=WAIT&isced11=TOTAL&sex=T&age=TOTAL"
)

# Outcome/system signal: total health expenditure as % GDP (SHA)
sha_url <- paste0(
  "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/hlth_sha11_hf",
  "?geo=IT&unit=PC_GDP&icha11_hf=TOT_HF"
)

u1 <- decode_jsonstat(fetch_json(u1_url), u1_url, "q1")
sha <- decode_jsonstat(fetch_json(sha_url), sha_url, "q1")

u1_small <- u1[, c("time_code", "time_label", "value")]
names(u1_small)[3] <- "unmet_wait_pct"

sha_small <- sha[, c("time_code", "time_label", "value")]
names(sha_small)[3] <- "health_spend_pct_gdp"

joined <- merge(u1_small, sha_small, by = c("time_code", "time_label"), all = FALSE)
joined <- joined[order(as.integer(joined$time_code)), ]

safe_write(u1_small, file.path(out_dir, "q1_access_unmet_wait.csv"))
safe_write(sha_small, file.path(out_dir, "q1_outcome_spend_gdp.csv"))
safe_write(joined, file.path(out_dir, "q1_access_outcome_joined.csv"))

cat("phase1 q1 numeric done\n")
