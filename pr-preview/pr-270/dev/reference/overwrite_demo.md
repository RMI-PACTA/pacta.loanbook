# A demonstration dataset used to overwrite specific entity names or sectors

Fake dataset used to manually link loanbook entities to mismatched asset
level entities.

Demo datasets are synthetic because most financial data is strictly
private; they help to demonstrate and test the implementation in R of
'PACTA' (<https://www.transitionmonitor.com/>).

## Usage

``` r
overwrite_demo
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with 2
rows and 5 columns.

## Definitions

- `id_2dii` (character): IDs of the entities to overwrite., \* `level`
  (character): Which level should be overwritten (e.g. direct_loantaker
  or ultimate_parent)., \* `name` (character): Overwrite name (if only
  overwriting sector, type NA)., \* `sector` (character): Overwrite
  sector (if only overwriting name, type NA)., \* `source` (character):
  What is the source of this information (leave as "manual" for now, may
  remove this flag later).

## See also

Other demo data:
[`abcd_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/abcd_demo.md),
[`co2_intensity_scenario_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/co2_intensity_scenario_demo.md),
[`loanbook_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/loanbook_demo.md),
[`market_share_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/market_share_demo.md),
[`region_isos_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/region_isos_demo.md),
[`scenario_demo_2020`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scenario_demo_2020.md),
[`sda_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sda_demo.md)

## Examples

``` r
head(overwrite_demo)
#> # A tibble: 2 × 5
#>   level            id_2dii name         sector source
#>   <chr>            <chr>   <chr>        <chr>  <chr> 
#> 1 direct_loantaker DL294   bee handshoe coal   manual
#> 2 ultimate_parent  UP15    alpine india power  manual
```
