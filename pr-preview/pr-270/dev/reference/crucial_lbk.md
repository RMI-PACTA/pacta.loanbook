# Crucial `loanbook` columns for `match_name()`

This is a helper to select the minimum `loanbook` columns you need to
run
[`match_name()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/match_name.md).
Using more columns may use too much time and memory.

## Usage

``` r
crucial_lbk()
```

## Value

A character vector.

## See also

Other matching functions:
[`match_name()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/match_name.md),
[`prioritize()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prioritize.md),
[`prioritize_level()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prioritize_level.md)

## Examples

``` r
crucial_lbk()
#> [1] "id_ultimate_parent"                    
#> [2] "name_ultimate_parent"                  
#> [3] "id_direct_loantaker"                   
#> [4] "name_direct_loantaker"                 
#> [5] "sector_classification_system"          
#> [6] "sector_classification_direct_loantaker"
```
