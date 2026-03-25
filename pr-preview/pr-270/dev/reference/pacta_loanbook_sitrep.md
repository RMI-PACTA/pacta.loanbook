# Get a situation report on `{pacta.loanbook}`

This function gives a quick overview of the versions of R and RStudio as
well as the `{pacta.loanbook}` package. It's primarily designed to help
you get a quick idea of what's going on when you're helping someone else
debug a problem.

## Usage

``` r
pacta_loanbook_sitrep(repos = getOption("repos"))
```

## Arguments

- repos:

  The repositories to use to check for updates. Defaults to
  `getOption("repos")`.

## Value

returns `NULL` invisibly. The function is called for its side effect of
printing a situation report of `{pacta.loanbook}` and its core packages.

## See also

Other utility functions:
[`pacta_loanbook_conflicts()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_conflicts.md),
[`pacta_loanbook_deps()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_deps.md),
[`pacta_loanbook_logo()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_logo.md),
[`pacta_loanbook_packages()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_packages.md),
[`pacta_loanbook_update()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_update.md)

## Examples

``` r
pacta_loanbook_sitrep(repos = "https://cran.r-project.org")
#> ── R & RStudio ─────────────────────────────────────────────────────────────────
#> • R: 4.5.3
#> ── Core packages ───────────────────────────────────────────────────────────────
#> • r2dii.analysis (0.5.3)
#> • r2dii.data     (0.6.1)
#> • r2dii.match    (0.4.1)
#> • r2dii.plot     (0.5.2)
#> ── Non-core packages ───────────────────────────────────────────────────────────
#> • dplyr          (1.2.0)
#> • ggrepel        (0.9.8)
#> • magrittr       (2.0.4)
#> • purrr          (1.2.1)
#> • rlang          (1.1.7)
#> • scales         (1.4.0)
#> • tibble         (3.3.1)
#> • tidyselect     (1.2.1)
```
