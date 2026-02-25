root <- getwd()
source(file.path(root, "analysis", "r_pipeline", "scripts", "jsonstat_utils.R"))
ensure_dirs(root)
out_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase1")

# Q5: Procurement readiness signal
# Use financing scheme shares in total health expenditure (PC_CHE)
sha_url <- paste0(
  "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/hlth_sha11_hf",
  "?geo=IT&unit=PC_CHE&icha11_hf=HF1&icha11_hf=HF2&icha11_hf=HF3"
)

sha <- decode_jsonstat(fetch_json(sha_url), sha_url, "q5")
fin <- sha[, c("time_code", "time_label", "icha11_hf_code", "icha11_hf_label", "value")]
names(fin)[5] <- "share_pct"

fin <- fin[order(as.integer(fin$time_code), fin$icha11_hf_code), ]

latest_time <- max(as.integer(fin$time_code), na.rm = TRUE)
latest <- fin[as.integer(fin$time_code) == latest_time, ]

safe_write(fin, file.path(out_dir, "q5_financing_shares_over_time.csv"))
safe_write(latest, file.path(out_dir, "q5_financing_shares_latest.csv"))

cat("phase1 q5 numeric done\n")
