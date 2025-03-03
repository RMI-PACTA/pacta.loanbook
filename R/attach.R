core <- c(
  "r2dii.data",
  "r2dii.match",
  "r2dii.analysis",
  "r2dii.plot"
)

highlight_version <- function(x) {
  x <- as.character(x)

  is_dev <- function(x) {
    x <- suppressWarnings(as.numeric(x))
    !is.na(x) & x >= 9000
  }

  pieces <- strsplit(x, ".", fixed = TRUE)
  pieces <- lapply(pieces, function(x) ifelse(is_dev(x), cli::col_red(x), x))
  vapply(pieces, paste, collapse = ".", FUN.VALUE = character(1))
}
