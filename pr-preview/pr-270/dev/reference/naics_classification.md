# Dataset to bridge (translate) common sector-classification codes

This dataset serves as a translation key between common
sector-classification systems and sectors relevant to the 'PACTA' tool
(<https://www.transitionmonitor.com/>).

## Usage

``` r
naics_classification
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with
2125 rows and 5 columns.

## Definitions

- `borderline` (logical): Flag indicating if PACTA sector and
  classification code are a borderline match. The value TRUE indicates
  that the match is uncertain between the PACTA sector and the
  classification. The value FALSE indicates that the match is certainly
  perfect or the classification is certainly out of PACTA's scope.., \*
  `code` (character): Six-digit NAICS code., \* `description`
  (character): Original NAICS sector title., \* `sector` (character):
  Associated PACTA sector., \* `version` (character): Column identifying
  which year the classification was published in..

## Details

Classification datasets help to standardize sector classification codes
from the wild to a relevant subset including 'power', 'oil and gas',
'coal', 'automotive', 'aviation', 'concrete', 'steel', and 'shipping'.

## See also

Other datasets:
[`gics_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/gics_classification.md),
[`increasing_or_decreasing`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/increasing_or_decreasing.md),
[`isic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/isic_classification.md),
[`iso_codes`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/iso_codes.md),
[`nace_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/nace_classification.md),
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
head(naics_classification)
#> # A tibble: 6 × 5
#>   description                                code   sector    borderline version
#>   <chr>                                      <chr>  <chr>     <lgl>      <chr>  
#> 1 Agriculture, Forestry, Fishing and Hunting 11     not in s… FALSE      2022   
#> 2 Crop Production                            111    not in s… FALSE      2022   
#> 3 Oilseed and Grain Farming                  1111   not in s… FALSE      2022   
#> 4 Soybean Farming                            11111  not in s… FALSE      2022   
#> 5 Soybean Farming                            111110 not in s… FALSE      2022   
#> 6 Oilseed (except Soybean) Farming           11112  not in s… FALSE      2022   
```
