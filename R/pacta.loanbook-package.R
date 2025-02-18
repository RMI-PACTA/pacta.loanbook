#' @keywords internal
"_PACKAGE"

# Suppress R CMD check note
# Namespace in Imports field not imported from: PKG
#   All declared Imports should be used.
ignore_unused_imports <- function() {
  r2dii.data::data_dictionary
  r2dii.match::match_name
  r2dii.analysis::target_market_share
  r2dii.plot::plot_techmix
}

release_bullets <- function() {
  c(
    '`usethis::use_latest_dependencies(TRUE, "CRAN")`'
  )
}

utils::globalVariables(".data")
