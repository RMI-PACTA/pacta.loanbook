inform_startup <- function(msg, ...) {
  if (is.null(msg)) {
    return()
  }
  if (isTRUE(getOption("pacta_loanbook.quiet"))) {
    return()
  }

  rlang::inform(msg, ..., class = "packageStartupMessage")
}

#' List all packages in pacta.loanbook
#'
#' @param include_self Include pacta.loanbook in the list?
#'
#' @family utility functions
#'
#' @export
#'
#' @examples
#' pacta_loanbook_packages()

pacta_loanbook_packages <- function(include_self = TRUE) {
  raw <- utils::packageDescription("pacta.loanbook")$Imports
  imports <- strsplit(raw, ",")[[1]]
  parsed <- gsub("^\\s+|\\s+$", "", imports)
  names <- vapply(strsplit(parsed, "\\s+"), "[[", 1, FUN.VALUE = character(1))

  if (include_self) {
    names <- c(names, "pacta.loanbook")
  }

  names
}

invert <- function(x) {
  if (length(x) == 0) return()
  stacked <- utils::stack(x)
  tapply(as.character(stacked$ind), stacked$values, list)
}
