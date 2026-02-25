library(jsonlite)

fetch_json <- function(url) {
  fromJSON(url, simplifyVector = FALSE)
}

decode_jsonstat <- function(js, source_url, question_id) {
  if (is.null(js$value) || length(js$value) == 0) {
    return(data.frame())
  }

  dim_ids <- unlist(js$id)
  sizes <- as.integer(unlist(js$size))
  values <- js$value

  obs_names <- names(values)
  if (is.null(obs_names) || any(!nzchar(obs_names))) {
    obs_names <- as.character(seq_along(values) - 1)
  }

  rows <- vector("list", length(values))

  for (i in seq_along(values)) {
    k <- as.integer(obs_names[i])
    coords <- integer(length(sizes))
    kk <- k
    for (d in rev(seq_along(sizes))) {
      coords[d] <- (kk %% sizes[d]) + 1
      kk <- kk %/% sizes[d]
    }

    row <- list(
      question_id = question_id,
      dataset_id = if (!is.null(js$extension$id)) js$extension$id else "",
      source_url = source_url,
      obs_key = obs_names[i],
      value = as.numeric(values[[i]])
    )

    for (d in seq_along(dim_ids)) {
      dim_name <- dim_ids[d]
      dim_obj <- js$dimension[[dim_name]]
      code <- ""
      label <- ""
      if (!is.null(dim_obj$category$index)) {
        idx <- unlist(dim_obj$category$index)
        idx_code <- names(idx)[idx == (coords[d] - 1)]
        if (length(idx_code) > 0) {
          code <- idx_code[1]
          if (!is.null(dim_obj$category$label[[code]])) {
            label <- as.character(dim_obj$category$label[[code]])
          }
        }
      }
      row[[paste0(dim_name, "_code")]] <- code
      row[[paste0(dim_name, "_label")]] <- label
    }

    rows[[i]] <- as.data.frame(row, stringsAsFactors = FALSE)
  }

  do.call(rbind, rows)
}

safe_write <- function(df, path) {
  write.csv(df, path, row.names = FALSE)
}

ensure_dirs <- function(root) {
  out1 <- file.path(root, "analysis", "r_pipeline", "outputs", "phase1")
  out2p <- file.path(root, "analysis", "r_pipeline", "outputs", "phase2", "plots")
  out2t <- file.path(root, "analysis", "r_pipeline", "outputs", "phase2", "tables")
  logs <- file.path(root, "analysis", "r_pipeline", "logs")
  dir.create(out1, recursive = TRUE, showWarnings = FALSE)
  dir.create(out2p, recursive = TRUE, showWarnings = FALSE)
  dir.create(out2t, recursive = TRUE, showWarnings = FALSE)
  dir.create(logs, recursive = TRUE, showWarnings = FALSE)
}
