# Update `{pacta.loanbook}` packages

This will check to see if all `{pacta.loanbook}` packages (and
optionally, their dependencies) are up-to-date, and will install after
an interactive confirmation.

## Usage

``` r
pacta_loanbook_update(recursive = FALSE, repos = getOption("repos"))
```

## Arguments

- recursive:

  If `TRUE`, will also list all dependencies of `{pacta.loanbook}`
  packages.

- repos:

  The repositories to use to check for updates. Defaults to
  `getOption("repos")`.

## Value

returns `NULL` invisibly. The function is called for its side effect of
printing the status of locally installed, relevant packages.

## See also

Other utility functions:
[`pacta_loanbook_conflicts()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_conflicts.md),
[`pacta_loanbook_deps()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_deps.md),
[`pacta_loanbook_logo()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_logo.md),
[`pacta_loanbook_packages()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_packages.md),
[`pacta_loanbook_sitrep()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_sitrep.md)

## Examples

``` r
pacta_loanbook_update(repos = "https://cran.r-project.org")
#> All pacta.loanbook packages up-to-date
```
