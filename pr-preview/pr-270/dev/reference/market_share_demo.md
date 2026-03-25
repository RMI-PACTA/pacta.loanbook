# An example of a `market_share_demo`-like dataset

Dataset imitating the output of
[`r2dii.analysis::target_market_share()`](https://rmi-pacta.github.io/r2dii.analysis/reference/target_market_share.html).

## Usage

``` r
market_share_demo
```

## Format

An object of class `spec_tbl_df` (inherits from `tbl_df`, `tbl`,
`data.frame`) with 802 rows and 10 columns.

## See also

Other demo data:
[`abcd_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/abcd_demo.md),
[`co2_intensity_scenario_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/co2_intensity_scenario_demo.md),
[`loanbook_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/loanbook_demo.md),
[`overwrite_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/overwrite_demo.md),
[`region_isos_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/region_isos_demo.md),
[`scenario_demo_2020`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scenario_demo_2020.md),
[`sda_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sda_demo.md)

## Examples

``` r
market_share_demo
#> # A tibble: 802 × 10
#>    sector     technology  year region scenario_source metric     production
#>    <chr>      <chr>      <int> <chr>  <chr>           <chr>           <dbl>
#>  1 automotive electric    2020 global demo_2020       projected     324592.
#>  2 automotive electric    2020 global demo_2020       target_cps    324592.
#>  3 automotive electric    2020 global demo_2020       target_sds    324592.
#>  4 automotive electric    2020 global demo_2020       target_sps    324592.
#>  5 automotive electric    2021 global demo_2020       projected     339656.
#>  6 automotive electric    2021 global demo_2020       target_cps    329191.
#>  7 automotive electric    2021 global demo_2020       target_sds    352505.
#>  8 automotive electric    2021 global demo_2020       target_sps    330435.
#>  9 automotive electric    2022 global demo_2020       projected     354720.
#> 10 automotive electric    2022 global demo_2020       target_cps    333693.
#> # ℹ 792 more rows
#> # ℹ 3 more variables: technology_share <dbl>, scope <chr>,
#> #   percentage_of_initial_production_by_scope <dbl>
```
