# List all packages in `{pacta.loanbook}`

List all packages in `{pacta.loanbook}`

## Usage

``` r
pacta_loanbook_packages(include_self = TRUE)
```

## Arguments

- include_self:

  Include `{pacta.loanbook}` in the list?

## Value

a character vector containing the names of packages imported by
`{pacta.loanbook}`.

## See also

Other utility functions:
[`pacta_loanbook_conflicts()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_conflicts.md),
[`pacta_loanbook_deps()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_deps.md),
[`pacta_loanbook_logo()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_logo.md),
[`pacta_loanbook_sitrep()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_sitrep.md),
[`pacta_loanbook_update()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_update.md)

## Examples

``` r
pacta_loanbook_packages()
#>  [1] "cli"            "dplyr"          "ggrepel"        "magrittr"      
#>  [5] "purrr"          "r2dii.analysis" "r2dii.data"     "r2dii.match"   
#>  [9] "r2dii.plot"     "rlang"          "rstudioapi"     "scales"        
#> [13] "tibble"         "tidyselect"     "pacta.loanbook"
```
