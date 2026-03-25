# A prepared climate scenario dataset for demonstration

Fake climate scenario dataset, prepared for the software PACTA (Paris
Agreement Capital Transition Assessment). It imitates climate scenario
data (e.g. from the International Energy Agency (IEA)) including the
change through time in production across industrial sectors.

Demo datasets are synthetic because most financial data is strictly
private; they help to demonstrate and test the implementation in R of
'PACTA' (<https://www.transitionmonitor.com/>).

## Usage

``` r
scenario_demo_2020
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with
1512 rows and 8 columns.

## Definitions

- `region` (character): The region to which the pathway is relevant., \*
  `scenario` (character): The name of the scenario., \*
  `scenario_source` (character): The source publication from which the
  scenario was taken., \* `sector` (character): The sector to which the
  scenario prescribes a pathway., \* `smsp` (double): Sector market
  share percentage of the pathway calculated in 2020., \* `technology`
  (character): The technology within the sector to which the scenario
  prescribes a pathway., \* `tmsr` (double): Technology market share
  ratio of the pathway calculated in 2020., \* `year` (integer): The
  year at which the pathway value is prescribed.

## See also

Other demo data:
[`abcd_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/abcd_demo.md),
[`co2_intensity_scenario_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/co2_intensity_scenario_demo.md),
[`loanbook_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/loanbook_demo.md),
[`market_share_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/market_share_demo.md),
[`overwrite_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/overwrite_demo.md),
[`region_isos_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/region_isos_demo.md),
[`sda_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sda_demo.md)

## Examples

``` r
head(scenario_demo_2020)
#> # A tibble: 6 × 8
#>   scenario sector     technology region  year  tmsr    smsp scenario_source
#>   <chr>    <chr>      <chr>      <chr>  <int> <dbl>   <dbl> <chr>          
#> 1 cps      automotive electric   global  2020  1    0       demo_2020      
#> 2 cps      automotive hybrid     global  2020  1    0       demo_2020      
#> 3 cps      automotive ice        global  2020  1    0       demo_2020      
#> 4 cps      automotive electric   global  2021  1.12 0.00108 demo_2020      
#> 5 cps      automotive hybrid     global  2021  1.12 0.0165  demo_2020      
#> 6 cps      automotive ice        global  2021  1.02 0.0188  demo_2020      
```
