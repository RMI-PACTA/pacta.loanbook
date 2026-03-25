# Conflicts between the `{pacta.loanbook}` and other packages

This function lists all the conflicts between packages in the
`{pacta.loanbook}` and other packages that you have loaded.

## Usage

``` r
pacta_loanbook_conflicts(only = NULL)
```

## Arguments

- only:

  Set this to a character vector to restrict to conflicts only with
  these packages.

## Value

a `pacta_loanbook_conflicts` classed list which will print a list of
conflicts to the console in interactive sessions, or `NULL` if no
conflicts are found.

## Details

There are four conflicts that are deliberately ignored: `intersect`,
`union`, `setequal`, and `setdiff` from dplyr. These functions make the
base equivalents generic, so shouldn't negatively affect any existing
code.

## See also

Other utility functions:
[`pacta_loanbook_deps()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_deps.md),
[`pacta_loanbook_logo()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_logo.md),
[`pacta_loanbook_packages()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_packages.md),
[`pacta_loanbook_sitrep()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_sitrep.md),
[`pacta_loanbook_update()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_update.md)

## Examples

``` r
pacta_loanbook_conflicts()
```
