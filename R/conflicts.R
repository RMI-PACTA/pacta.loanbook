#' Conflicts between the `{pacta.loanbook}` and other packages
#'
#' This function lists all the conflicts between packages in the
#' `{pacta.loanbook}` and other packages that you have loaded.
#'
#' There are four conflicts that are deliberately ignored: \code{intersect},
#' \code{union}, \code{setequal}, and \code{setdiff} from dplyr. These functions
#' make the base equivalents generic, so shouldn't negatively affect any
#' existing code.
#'
#' @family utility functions
#'
#' @export
#'
#' @param only Set this to a character vector to restrict to conflicts only
#'   with these packages.
#'
#' @return a `pacta_loanbook_conflicts` classed list which will print a list of
#' conflicts to the console in interactive sessions, or `NULL` if no conflicts
#' are found.
#'
#' @examples
#' pacta_loanbook_conflicts()

pacta_loanbook_conflicts <- function(only = NULL) {
  envs <- grep("^package:", search(), value = TRUE)
  envs <- purrr::set_names(envs)

  if (!is.null(only)) {
    only <- union(only, core)
    envs <- envs[names(envs) %in% paste0("package:", only)]
  }

  objs <- invert(lapply(envs, ls_env))

  conflicts <- purrr::keep(objs, ~ length(.x) > 1)

  tidy_names <- paste0("package:", pacta_loanbook_packages())
  conflicts <- purrr::keep(conflicts, ~ any(.x %in% tidy_names))

  conflict_funs <- purrr::imap(conflicts, confirm_conflict)
  conflict_funs <- purrr::compact(conflict_funs)

  if (length(conflict_funs) == 0) {
    return(invisible(NULL))
  }

  structure(conflict_funs, class = "pacta_loanbook_conflicts")
}

pacta_loanbook_conflict_message <- function(x) {
  header <- cli::rule(
    left = cli::style_bold("Conflicts"),
    right = "pacta_loanbook_conflicts()"
  )

  if (is.null(x)) {
    return(
      paste0(
        header, "\n",
        cli::format_bullets_raw(c(v = "no conflicts found"))
      )
    )
  }

  pkgs <- x %>% purrr::map(~ gsub("^package:", "", .))
  others <- pkgs %>% purrr::map(`[`, -1)
  other_calls <- purrr::map2_chr(
    others, names(others),
    ~ paste0(cli::col_blue(.x), "::", .y, "()", collapse = ", ")
  )

  winner <- pkgs %>% purrr::map_chr(1)
  funs <- format(paste0(cli::col_blue(winner), "::", cli::col_green(paste0(names(x), "()"))))
  bullets <- paste0(
    cli::col_red(cli::symbol$cross), " ", funs, " masks ", other_calls,
    collapse = "\n"
  )

  conflicted <- paste0(
    cli::col_cyan(cli::symbol$info), " ",
    cli::format_inline("Use the {.href [conflicted package](http://conflicted.r-lib.org/)} to force all conflicts to become errors"
    ))

  paste0(
    header, "\n",
    bullets, "\n",
    conflicted
  )
}

#' @export
print.pacta_loanbook_conflicts <- function(x, ..., startup = FALSE) {
  cli::cat_line(pacta_loanbook_conflict_message(x))
  invisible(x)
}

#' @importFrom magrittr %>%
confirm_conflict <- function(packages, name) {
  # Only look at functions
  objs <- packages %>%
    purrr::map(~ get(name, pos = .)) %>%
    purrr::keep(is.function)

  if (length(objs) <= 1)
    return()

  # Remove identical functions
  objs <- objs[!duplicated(objs)]
  packages <- packages[!duplicated(packages)]
  if (length(objs) == 1)
    return()

  packages
}

ls_env <- function(env) {
  x <- ls(pos = env)

  # intersect, setdiff, setequal, union come from generics
  if (env %in% c("package:dplyr", "package:lubridate")) {
    x <- setdiff(x, c("intersect", "setdiff", "setequal", "union"))
  }

  if (env == "package:lubridate") {
    x <- setdiff(x, c(
      "as.difftime", # lubridate makes into an S4 generic
      "date"         # matches base behaviour
    ))
  }

  x
}
