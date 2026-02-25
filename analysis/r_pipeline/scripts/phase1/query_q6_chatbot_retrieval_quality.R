root <- getwd()
source(file.path(root, "analysis", "r_pipeline", "scripts", "jsonstat_utils.R"))
ensure_dirs(root)
out_dir <- file.path(root, "analysis", "r_pipeline", "outputs", "phase1")

# Q6: Data readiness for retrieval/routing (numeric)
# Measure structured coverage from official datasets and Orphadata API surface.

u1_url <- paste0(
  "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/hlth_ehis_un1e",
  "?geo=IT&time=2019"
)
u2_url <- paste0(
  "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/hlth_ehis_un2e",
  "?geo=IT&time=2019"
)
sha_url <- paste0(
  "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/hlth_sha11_hf",
  "?geo=IT&unit=PC_CHE&icha11_hf=HF1&icha11_hf=HF2&icha11_hf=HF3"
)
orpha_openapi <- "https://api.orphadata.com/openapi.json"

u1 <- decode_jsonstat(fetch_json(u1_url), u1_url, "q6")
u2 <- decode_jsonstat(fetch_json(u2_url), u2_url, "q6")
sha <- decode_jsonstat(fetch_json(sha_url), sha_url, "q6")
orpha <- fetch_json(orpha_openapi)

orpha_paths <- if (!is.null(orpha$paths)) length(names(orpha$paths)) else 0

metrics <- data.frame(
  metric = c(
    "u1_observations",
    "u2_observations",
    "sha_observations",
    "u1_distinct_age",
    "u2_distinct_hlthcare",
    "sha_distinct_years",
    "orphadata_openapi_paths"
  ),
  value = c(
    nrow(u1),
    nrow(u2),
    nrow(sha),
    length(unique(u1$age_code)),
    length(unique(u2$hlthcare_code)),
    length(unique(sha$time_code)),
    as.numeric(orpha_paths)
  ),
  stringsAsFactors = FALSE
)

safe_write(metrics, file.path(out_dir, "q6_data_readiness_metrics.csv"))

cat("phase1 q6 numeric done\n")
