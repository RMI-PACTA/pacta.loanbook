# A prepared CO₂ intensity climate scenario dataset for demonstration

Fake CO₂ intensity climate scenario dataset, prepared for the software
PACTA (Paris Agreement Capital Transition Assessment). It imitates
climate scenario data (e.g. from the International Energy Agency (IEA))
including the change through time in production across industrial
sectors.

Demo datasets are synthetic because most financial data is strictly
private; they help to demonstrate and test the implementation in R of
'PACTA' (<https://www.transitionmonitor.com/>).

## Usage

``` r
co2_intensity_scenario_demo
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with 22
rows and 7 columns.

## Definitions

- `emission_factor` (double): The target sector level emissions factor
  that the scenario prescribes., \* `emission_factor_unit` (character):
  The units that the emissions factor is measured in., \* `region`
  (character): The region to which the pathway is relevant., \*
  `scenario` (character): The name of the scenario., \*
  `scenario_source` (character): The source publication from which the
  scenario was taken., \* `sector` (character): The sector to which the
  scenario prescribes a pathway., \* `year` (integer): The year at which
  the pathway value is prescribed.

## See also

Other demo data:
[`abcd_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/abcd_demo.md),
[`loanbook_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/loanbook_demo.md),
[`market_share_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/market_share_demo.md),
[`overwrite_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/overwrite_demo.md),
[`region_isos_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/region_isos_demo.md),
[`scenario_demo_2020`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scenario_demo_2020.md),
[`sda_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sda_demo.md)

## Examples

``` r
head(co2_intensity_scenario_demo)
#> # A tibble: 6 × 7
#>   scenario_source scenario sector region  year emission_factor_unit             
#>   <chr>           <chr>    <chr>  <chr>  <dbl> <chr>                            
#> 1 demo_2020       demo     cement global  2020 tonnes of CO2 per tonne of Cement
#> 2 demo_2020       demo     cement global  2021 tonnes of CO2 per tonne of Cement
#> 3 demo_2020       demo     cement global  2022 tonnes of CO2 per tonne of Cement
#> 4 demo_2020       demo     cement global  2023 tonnes of CO2 per tonne of Cement
#> 5 demo_2020       demo     cement global  2024 tonnes of CO2 per tonne of Cement
#> 6 demo_2020       demo     cement global  2025 tonnes of CO2 per tonne of Cement
#> # ℹ 1 more variable: emission_factor <dbl>
```
