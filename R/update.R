#' Update `{pacta.loanbook}` packages
#'
#' This will check to see if all `{pacta.loanbook}` packages (and optionally,
#' their dependencies) are up-to-date, and will install after an interactive
#' confirmation.
#'
#' @inheritParams pacta_loanbook_deps
#'
#' @family utility functions
#'
#' @export
#'
#' @return returns `NULL` invisibly. The function is called for its side effect
#'   of printing the status of locally installed, relevant packages.
#'
#' @examples
#' pacta_loanbook_update(repos = "https://cran.r-project.org")

pacta_loanbook_update <- function(recursive = FALSE, repos = getOption("repos")) {

  deps <- pacta_loanbook_deps(recursive, repos)
  behind <- dplyr::filter(deps, behind)

  if (nrow(behind) == 0) {
    cli::cat_line("All pacta.loanbook packages up-to-date")
    return(invisible())
  }

  cli::cat_line(cli::pluralize(
    "The following {cli::qty(nrow(behind))}package{?s} {?is/are} out of date:"
  ))
  cli::cat_line()
  cli::cat_bullet(format(behind$package), " (", behind$local, " -> ", behind$cran, ")")

  cli::cat_line()
  cli::cat_line("Start a clean R session then run:")

  pkg_str <- paste0(deparse(behind$package), collapse = "\n")
  cli::cat_line("install.packages(", pkg_str, ")")

  invisible()
}

#' Get a situation report on `{pacta.loanbook}`
#'
#' This function gives a quick overview of the versions of R and RStudio as well
#' as the `{pacta.loanbook}` package. It's primarily designed to help you get a
#' quick idea of what's going on when you're helping someone else debug a
#' problem.
#'
#' @param repos The repositories to use to check for updates.
#'   Defaults to \code{getOption("repos")}.
#'
#' @family utility functions
#'
#' @export
#'
#' @return returns `NULL` invisibly. The function is called for its side effect
#'   of printing a situation report of `{pacta.loanbook}` and its core packages.
#'
#' @examples
#' pacta_loanbook_sitrep(repos = "https://cran.r-project.org")

pacta_loanbook_sitrep <- function(repos = getOption("repos")) {
  cli::cat_rule("R & RStudio")
  if (rstudioapi::isAvailable()) {
    cli::cat_bullet("RStudio: ", rstudioapi::getVersion())
  }
  cli::cat_bullet("R: ", getRversion())

  deps <- pacta_loanbook_deps(repos = repos)
  package_pad <- format(deps$package)
  packages <- ifelse(
    deps$behind,
    paste0(cli::col_yellow(cli::style_bold(package_pad)), " (", deps$local, " < ", deps$cran, ")"),
    paste0(cli::col_blue(package_pad), " (", highlight_version(deps$local), ")")
  )

  cli::cat_rule("Core packages")
  cli::cat_bullet(packages[deps$package %in% core])
  cli::cat_rule("Non-core packages")
  cli::cat_bullet(packages[!deps$package %in% core])
}

#' List all `{pacta.loanbook}` dependencies
#'
#' @param recursive If \code{TRUE}, will also list all dependencies of
#'   `{pacta.loanbook}` packages.
#' @param repos The repositories to use to check for updates.
#'   Defaults to \code{getOption("repos")}.
#'
#' @family utility functions
#'
#' @export
#'
#' @return a `tibble` containing the local and CRAN versions of dependent
#'   packages.
#'
#' @examples
#' pacta_loanbook_deps(repos = "https://cran.r-project.org")

pacta_loanbook_deps <- function(recursive = FALSE, repos = getOption("repos")) {
  pkgs <- utils::available.packages(repos = repos)
  deps <- tools::package_dependencies("pacta.loanbook", pkgs, recursive = recursive)

  pkg_deps <- unique(sort(unlist(deps)))

  base_pkgs <- c(
    "base", "compiler", "datasets", "graphics", "grDevices", "grid",
    "methods", "parallel", "splines", "stats", "stats4", "tools", "tcltk",
    "utils"
  )
  pkg_deps <- setdiff(pkg_deps, base_pkgs)

  tool_pkgs <- c("cli", "rstudioapi")
  pkg_deps <- setdiff(pkg_deps, tool_pkgs)

  cran_version <- lapply(pkgs[pkg_deps, "Version"], package_version)
  local_version <- lapply(pkg_deps, packageVersion)

  behind <- purrr::map2_lgl(cran_version, local_version, `>`)

  tibble::tibble(
    package = pkg_deps,
    cran = cran_version %>% purrr::map_chr(as.character),
    local = local_version %>% purrr::map_chr(as.character),
    behind = behind
  )
}

packageVersion <- function(pkg) {
  if (rlang::is_installed(pkg)) {
    utils::packageVersion(pkg)
  } else {
    0
  }
}
