root <- getwd()
source(file.path(root, "analysis", "r_pipeline", "scripts", "jsonstat_utils.R"))
ensure_dirs(root)
out_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase1")

# Q3: Handoff hotspots proxy
# Build a numeric risk index by age from:
# - waiting-list unmet need (UN1E, reason=WAIT)
# - unmet by service type (UN2E)

u1_url <- paste0(
  "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/hlth_ehis_un1e",
  "?geo=IT&reason=WAIT&isced11=TOTAL&sex=T&time=2019"
)
u2_url <- paste0(
  "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/hlth_ehis_un2e",
  "?geo=IT&sex=T&isced11=TOTAL&time=2019&hlthcare=HC_MED&hlthcare=HC_DENT&hlthcare=HC_MENT&hlthcare=MG_PMEDS"
)

u1 <- decode_jsonstat(fetch_json(u1_url), u1_url, "q3")
u2 <- decode_jsonstat(fetch_json(u2_url), u2_url, "q3")

u1_small <- u1[, c("age_code", "age_label", "value")]
names(u1_small)[3] <- "wait_unmet_pct"

u2_small <- u2[, c("age_code", "age_label", "hlthcare_code", "hlthcare_label", "value")]
names(u2_small)[5] <- "service_unmet_pct"

age_keep <- c("Y15-24", "Y25-34", "Y35-44", "Y45-54", "Y55-64", "Y65-74", "Y_GE75")
u1_small <- u1_small[u1_small$age_code %in% age_keep, ]
u2_small <- u2_small[u2_small$age_code %in% age_keep, ]

u2_age <- aggregate(service_unmet_pct ~ age_code + age_label, data = u2_small, FUN = mean)

risk <- merge(u1_small, u2_age, by = c("age_code", "age_label"), all = FALSE)

z <- function(x) {
  s <- sd(x, na.rm = TRUE)
  if (is.na(s) || s == 0) {
    return(rep(0, length(x)))
  }
  (x - mean(x, na.rm = TRUE)) / s
}

risk$handoff_risk_index <- z(risk$wait_unmet_pct) + z(risk$service_unmet_pct)
risk <- risk[order(risk$handoff_risk_index, decreasing = TRUE), ]

safe_write(u1_small, file.path(out_dir, "q3_wait_unmet_by_age.csv"))
safe_write(u2_small, file.path(out_dir, "q3_service_unmet_by_age_service.csv"))
safe_write(risk, file.path(out_dir, "q3_handoff_risk_hotspots_by_age.csv"))

cat("phase1 q3 numeric done\n")
