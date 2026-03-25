# Determine if a technology is increasing or decreasing

This dataset provides a simple lookup table to determine if a technology
is meant to increase or decrease to align with a scenario that predicts
a less than 2 degree temperature rise.

## Usage

``` r
increasing_or_decreasing
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with 20
rows and 3 columns.

## Definitions

- `increasing_or_decreasing` (character): If the technology is
  increasing or decreasing, as defined by the Paris-aligned IEA
  scenarios., \* `sector` (character): The sector to which the
  technology belongs., \* `technology` (character): The technology
  sub-category within the sector.

## See also

Other datasets:
[`gics_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/gics_classification.md),
[`isic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/isic_classification.md),
[`iso_codes`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/iso_codes.md),
[`nace_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/nace_classification.md),
[`naics_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/naics_classification.md),
[`palette_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/palette_colours.md),
[`psic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/psic_classification.md),
[`region_isos`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/region_isos.md),
[`scenario_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scenario_colours.md),
[`sector_classifications`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sector_classifications.md),
[`sector_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sector_colours.md),
[`sic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sic_classification.md),
[`technology_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/technology_colours.md)

## Examples

``` r
head(increasing_or_decreasing)
#> # A tibble: 6 × 3
#>   sector     technology    increasing_or_decreasing
#>   <chr>      <chr>         <chr>                   
#> 1 automotive electric      increasing              
#> 2 automotive hybrid        increasing              
#> 3 automotive ice           decreasing              
#> 4 automotive fuelcell      increasing              
#> 5 power      hydrocap      increasing              
#> 6 power      renewablescap increasing              
```
