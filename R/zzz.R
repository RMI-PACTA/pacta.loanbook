.onAttach <- function(...) {
  attached <- pacta_loanbook_attach()
  if (!is_loading_for_tests()) {
    inform_startup(pacta_loanbook_attach_message(attached))
  }

  if (!is_attached("conflicted") && !is_loading_for_tests()) {
    conflicts <- pacta_loanbook_conflicts()
    inform_startup(pacta_loanbook_conflict_message(conflicts))
  }

  packageStartupMessage(pacta_loanbook_logo())
}

is_attached <- function(x) {
  paste0("package:", x) %in% search()
}

is_loading_for_tests <- function() {
  !interactive() && identical(Sys.getenv("DEVTOOLS_LOAD"), "pacta.loanbook")
}
