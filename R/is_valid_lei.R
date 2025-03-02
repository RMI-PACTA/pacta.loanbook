is_valid_lei <- function(x) {
  x <- as.character(x)
  x <- gsub("\\s+", "", x)
  if (nchar(x) != 20) return(FALSE)
  if (grepl("[^a-zA-Z0-9]", x)) return(FALSE)
  x <-
    pmatch(
      x = unlist(strsplit(x, split = NULL, fixed = TRUE)),
      table = c(0:9, LETTERS),
      duplicates.ok = TRUE
    )
  x <- paste(x - 1L, collapse = "")
  gmp::mod.bigz(x, 97) == 1
}
