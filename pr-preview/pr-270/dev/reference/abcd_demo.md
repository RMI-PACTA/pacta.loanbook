# An asset-based company dataset for demonstration

Fake data about physical assets (e.g. wind turbine power plant
capacities), aggregated to company-level. These data are used to assess
the climate alignment of financial portfolios. It imitates data from
market-intelligence databases.

Demo datasets are synthetic because most financial data is strictly
private; they help to demonstrate and test the implementation in R of
'PACTA' (<https://www.transitionmonitor.com/>).

## Usage

``` r
abcd_demo
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with
4972 rows and 12 columns.

## Definitions

- `company_id` (character): The id of the company owning the asset
  created by the data provider., \* `emission_factor` (double): Company
  level emission factor of the technology., \* `emission_factor_unit`
  (character): The units that the emission factor is measured in., \*
  `is_ultimate_owner` (logical): Flag if company is the ultimate parent
  in our database., \* `lei` (character): The legal entity identifier of
  the company owning the asset., \* `name_company` (character): The name
  of the company owning the asset., \* `plant_location` (character):
  Country where asset is located., \* `production` (double): Company
  level production of the technology., \* `production_unit` (character):
  The units that production is measured in., \* `sector` (character):
  Sector to which the asset belongs., \* `technology` (character):
  Technology implemented by the asset., \* `year` (integer): Year at
  which the production value is predicted.

## See also

Other demo data:
[`co2_intensity_scenario_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/co2_intensity_scenario_demo.md),
[`loanbook_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/loanbook_demo.md),
[`market_share_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/market_share_demo.md),
[`overwrite_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/overwrite_demo.md),
[`region_isos_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/region_isos_demo.md),
[`scenario_demo_2020`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scenario_demo_2020.md),
[`sda_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sda_demo.md)

## Examples

``` r
head(abcd_demo)
#> # A tibble: 6 × 12
#>   company_id name_company          lei   sector technology production_unit  year
#>   <chr>      <chr>                 <chr> <chr>  <chr>      <chr>           <int>
#> 1 175        Giordano, Giordano e… 1850… power  hydrocap   MW               2020
#> 2 175        Giordano, Giordano e… 1850… power  hydrocap   MW               2021
#> 3 175        Giordano, Giordano e… 1850… power  hydrocap   MW               2022
#> 4 175        Giordano, Giordano e… 1850… power  hydrocap   MW               2023
#> 5 175        Giordano, Giordano e… 1850… power  hydrocap   MW               2024
#> 6 175        Giordano, Giordano e… 1850… power  hydrocap   MW               2025
#> # ℹ 5 more variables: production <dbl>, emission_factor <dbl>,
#> #   plant_location <chr>, is_ultimate_owner <lgl>, emission_factor_unit <chr>
```
