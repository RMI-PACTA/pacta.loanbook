# A dataset outlining various region definitions

This dataset maps codes representing countries to regions. It is similar
to but smaller than
[region_isos](https://rmi-pacta.github.io/r2dii.data/reference/region_isos.html).

Demo datasets are synthetic because most financial data is strictly
private; they help to demonstrate and test the implementation in R of
'PACTA' (<https://www.transitionmonitor.com/>).

For information about the ISO standard for country codes see
<https://www.iso.org/iso-3166-country-codes.html>.

## Usage

``` r
region_isos_demo
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with 358
rows and 3 columns.

## Definitions

- `isos` (character): Countries in region, defined by iso code., \*
  `region` (character): Benchmark region name., \* `source` (character):
  Source publication from which the regions are defined.

## See also

Other demo data:
[`abcd_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/abcd_demo.md),
[`co2_intensity_scenario_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/co2_intensity_scenario_demo.md),
[`loanbook_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/loanbook_demo.md),
[`market_share_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/market_share_demo.md),
[`overwrite_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/overwrite_demo.md),
[`scenario_demo_2020`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scenario_demo_2020.md),
[`sda_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sda_demo.md)

## Examples

``` r
region_isos_demo
#> # A tibble: 358 × 3
#>    region             isos  source   
#>    <chr>              <chr> <chr>    
#>  1 advanced economies bg    demo_2020
#>  2 advanced economies hr    demo_2020
#>  3 advanced economies cy    demo_2020
#>  4 advanced economies mt    demo_2020
#>  5 advanced economies ro    demo_2020
#>  6 advanced economies au    demo_2020
#>  7 advanced economies at    demo_2020
#>  8 advanced economies be    demo_2020
#>  9 advanced economies ca    demo_2020
#> 10 advanced economies cl    demo_2020
#> # ℹ 348 more rows
```
