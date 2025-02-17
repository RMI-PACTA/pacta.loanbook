#' @keywords internal
"_PACKAGE"

# Suppress R CMD check note
# Namespace in Imports field not imported from: PKG
#   All declared Imports should be used.
ignore_unused_imports <- function() {
  r2dii.data::data_dictionary
  r2dii.match::data_dictionary
  r2dii.analysis::data_dictionary
  r2dii.plot::data_dictionary
}

release_bullets <- function() {
  c(
    '`usethis::use_latest_dependencies(TRUE, "CRAN")`'
  )
}

utils::globalVariables(".data")
