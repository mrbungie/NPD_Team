root <- getwd()
source(file.path(root, "analysis", "r_pipeline", "scripts", "jsonstat_utils.R"))
ensure_dirs(root)
out_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase1")

# Q2: Diagnostic odyssey complexity proxy
# Use unmet needs by care service (medical/dental/mental/medicines) by age in Italy
u2_url <- paste0(
  "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/hlth_ehis_un2e",
  "?geo=IT&sex=T&isced11=TOTAL&time=2019&hlthcare=HC_MED&hlthcare=HC_DENT&hlthcare=HC_MENT&hlthcare=MG_PMEDS"
)

u2 <- decode_jsonstat(fetch_json(u2_url), u2_url, "q2")

u2_small <- u2[, c("hlthcare_code", "hlthcare_label", "age_code", "age_label", "time_code", "value")]
names(u2_small)[6] <- "unmet_pct"

age_keep <- c("Y15-24", "Y25-34", "Y35-44", "Y45-54", "Y55-64", "Y65-74", "Y_GE75")
u2_small <- u2_small[u2_small$age_code %in% age_keep, ]

# Complexity proxy = mean unmet across 4 service types by age group
proxy <- aggregate(unmet_pct ~ age_code + age_label + time_code, data = u2_small, FUN = mean)
names(proxy)[4] <- "complexity_proxy_unmet_mean"
proxy <- proxy[order(proxy$time_code, proxy$age_code), ]

safe_write(u2_small, file.path(out_dir, "q2_unmet_by_service_age.csv"))
safe_write(proxy, file.path(out_dir, "q2_complexity_proxy_by_age.csv"))

cat("phase1 q2 numeric done\n")
