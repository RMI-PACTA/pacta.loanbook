is_valid_lei <- function(x) {
  if (is.data.frame(x) && identical(length(x), 1L)) {
    x <- x[[1L]]
  }

  x[is.na(x)] <- "XXX" # set NAs to something sure to return FALSE
  x_factored <- as.factor(x)
  x_levels <- levels(x_factored)

  x_levels <- toupper(x_levels)
  x_levels <- gsub(pattern = "[[:blank:]]", replacement = "", x_levels)
  valid_struct <- grepl(pattern = "^[[:alnum:][:digit:]]{20}$", x = x_levels)

  valid_lei <-
    vapply(
      X = x_levels,
      FUN = function(x) {
        x <-
          pmatch(
            x = unlist(strsplit(x, split = NULL, fixed = TRUE)),
            table = c(0:9, LETTERS),
            duplicates.ok = TRUE
          )
        x <- paste(x - 1L, collapse = "")
        x <- sub(pattern = "^0+", replacement = "", x = x)
        gmp::mod.bigz(x, 97) == 1
      },
      FUN.VALUE = logical(1),
      USE.NAMES = FALSE
    )

  valid_struct[as.numeric(x_factored)] & valid_lei[as.numeric(x_factored)]
}
