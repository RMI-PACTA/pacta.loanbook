# A loanbook dataset for demonstration

Fake financial portfolio.

Demo datasets are synthetic because most financial data is strictly
private; they help to demonstrate and test the implementation in R of
'PACTA' (<https://www.transitionmonitor.com/>).

## Usage

``` r
loanbook_demo
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with 283
rows and 13 columns.

## Definitions

- `id_direct_loantaker` (character): Borrower identifier unique to each
  borrower/sector combination in loanbook., \* `id_loan` (character):
  Unique loan identifier., \* `id_ultimate_parent` (character): Ultimate
  parent identifier unique to each ultimate parent/sector combination.,
  \* `isin_direct_loantaker` (logical): Optional input: providing the
  isin identifier of the direct loan taker to improve the matching
  coverage., \* `lei_direct_loantaker` (logical): Optional input:
  providing the lei (legal entity identifier) of the direct loan taker
  to improve the matching coverage., \* `loan_size_credit_limit`
  (double): Total credit limit or exposure at default., \*
  `loan_size_credit_limit_currency` (character): Currency corresponding
  to credit limit., \* `loan_size_outstanding` (double): Amount drawn by
  borrower from total credit limit., \* `loan_size_outstanding_currency`
  (character): Currency corresponding to outstandings., \*
  `name_direct_loantaker` (character): Name of the company directly
  taking the loan., \* `name_ultimate_parent` (character): Name of the
  ultimate parent company to which the borrower belongs. Can be the same
  as borrower., \* `sector_classification_direct_loantaker` (double):
  Sector classification code of the direct loantaker., \*
  `sector_classification_system` (character): Name of the sector
  classification standard being used.

## See also

Other demo data:
[`abcd_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/abcd_demo.md),
[`co2_intensity_scenario_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/co2_intensity_scenario_demo.md),
[`market_share_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/market_share_demo.md),
[`overwrite_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/overwrite_demo.md),
[`region_isos_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/region_isos_demo.md),
[`scenario_demo_2020`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scenario_demo_2020.md),
[`sda_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sda_demo.md)

## Examples

``` r
head(loanbook_demo)
#> # A tibble: 6 × 13
#>   id_loan id_direct_loantaker name_direct_loantaker id_ultimate_parent
#>   <chr>   <chr>               <chr>                 <chr>             
#> 1 L1      C294                Vitale Group          UP15              
#> 2 L2      C293                Moen-Moen             UP84              
#> 3 L3      C292                Rowe-Rowe             UP288             
#> 4 L4      C299                Fadel-Fadel           UP54              
#> 5 L5      C305                Ring AG & Co. KGaA    UP104             
#> 6 L6      C304                Kassulke-Kassulke     UP83              
#> # ℹ 9 more variables: name_ultimate_parent <chr>, loan_size_outstanding <dbl>,
#> #   loan_size_outstanding_currency <chr>, loan_size_credit_limit <dbl>,
#> #   loan_size_credit_limit_currency <chr>, sector_classification_system <chr>,
#> #   sector_classification_direct_loantaker <chr>, lei_direct_loantaker <chr>,
#> #   isin_direct_loantaker <chr>
```
