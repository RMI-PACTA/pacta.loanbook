# Arrange unique `level` values in default order of `priority`

Arrange unique `level` values in default order of `priority`

## Usage

``` r
prioritize_level(data)
```

## Arguments

- data:

  A data frame, commonly the output of
  [`match_name()`](https://rmi-pacta.github.io/r2dii.match/reference/match_name.html).

## Value

A character vector of the default level priority per loan.

## See also

Other matching functions:
[`crucial_lbk()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/crucial_lbk.md),
[`match_name()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/match_name.md),
[`prioritize()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prioritize.md)

## Examples

``` r
matched <- tibble::tibble(
  level = c(
    "intermediate_parent_1",
    "direct_loantaker",
    "direct_loantaker",
    "direct_loantaker",
    "ultimate_parent",
    "intermediate_parent_2"
  )
)
prioritize_level(matched)
#> [1] "direct_loantaker"      "intermediate_parent_1" "intermediate_parent_2"
#> [4] "ultimate_parent"      
```
