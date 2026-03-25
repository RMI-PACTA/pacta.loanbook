# List all `{pacta.loanbook}` dependencies

List all `{pacta.loanbook}` dependencies

## Usage

``` r
pacta_loanbook_deps(recursive = FALSE, repos = getOption("repos"))
```

## Arguments

- recursive:

  If `TRUE`, will also list all dependencies of `{pacta.loanbook}`
  packages.

- repos:

  The repositories to use to check for updates. Defaults to
  `getOption("repos")`.

## Value

a `tibble` containing the local and CRAN versions of dependent packages.

## See also

Other utility functions:
[`pacta_loanbook_conflicts()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_conflicts.md),
[`pacta_loanbook_logo()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_logo.md),
[`pacta_loanbook_packages()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_packages.md),
[`pacta_loanbook_sitrep()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_sitrep.md),
[`pacta_loanbook_update()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_update.md)

## Examples

``` r
pacta_loanbook_deps(repos = "https://cran.r-project.org")
#> # A tibble: 12 × 4
#>    package        cran  local behind
#>    <chr>          <chr> <chr> <lgl> 
#>  1 dplyr          1.2.0 1.2.0 FALSE 
#>  2 ggrepel        0.9.8 0.9.8 FALSE 
#>  3 magrittr       2.0.4 2.0.4 FALSE 
#>  4 purrr          1.2.1 1.2.1 FALSE 
#>  5 r2dii.analysis 0.5.3 0.5.3 FALSE 
#>  6 r2dii.data     0.6.1 0.6.1 FALSE 
#>  7 r2dii.match    0.4.1 0.4.1 FALSE 
#>  8 r2dii.plot     0.5.2 0.5.2 FALSE 
#>  9 rlang          1.1.7 1.1.7 FALSE 
#> 10 scales         1.4.0 1.4.0 FALSE 
#> 11 tibble         3.3.1 3.3.1 FALSE 
#> 12 tidyselect     1.2.1 1.2.1 FALSE 
```
