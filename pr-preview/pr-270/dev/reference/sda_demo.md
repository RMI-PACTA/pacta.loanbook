# An example of an `sda_demo`-like dataset

Dataset imitating the output of
[`r2dii.analysis::target_sda()`](https://rmi-pacta.github.io/r2dii.analysis/reference/target_sda.html).

## Usage

``` r
sda_demo
```

## Format

An object of class `spec_tbl_df` (inherits from `tbl_df`, `tbl`,
`data.frame`) with 110 rows and 6 columns.

## Source

<https://github.com/RMI-PACTA/r2dii.plot/issues/55>.

## See also

Other demo data:
[`abcd_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/abcd_demo.md),
[`co2_intensity_scenario_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/co2_intensity_scenario_demo.md),
[`loanbook_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/loanbook_demo.md),
[`market_share_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/market_share_demo.md),
[`overwrite_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/overwrite_demo.md),
[`region_isos_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/region_isos_demo.md),
[`scenario_demo_2020`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scenario_demo_2020.md)

## Examples

``` r
sda_demo
#> # A tibble: 110 × 6
#>    sector  year region             scenario_source emission_factor_metric
#>    <chr>  <dbl> <chr>              <chr>           <chr>                 
#>  1 cement  2020 advanced economies demo_2020       projected             
#>  2 cement  2020 developing asia    demo_2020       projected             
#>  3 cement  2020 global             demo_2020       projected             
#>  4 cement  2021 advanced economies demo_2020       projected             
#>  5 cement  2021 developing asia    demo_2020       projected             
#>  6 cement  2021 global             demo_2020       projected             
#>  7 cement  2022 advanced economies demo_2020       projected             
#>  8 cement  2022 developing asia    demo_2020       projected             
#>  9 cement  2022 global             demo_2020       projected             
#> 10 cement  2023 advanced economies demo_2020       projected             
#> # ℹ 100 more rows
#> # ℹ 1 more variable: emission_factor_value <dbl>
```
