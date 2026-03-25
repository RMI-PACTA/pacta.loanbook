# Dataset to bridge (translate) common sector-classification codes

This dataset serves as a translation key between common
sector-classification systems and sectors relevant to the 'PACTA' tool
(<https://www.transitionmonitor.com/>).

## Usage

``` r
psic_classification
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with
1271 rows and 5 columns.

## Definitions

- `borderline` (logical): Flag indicating if PACTA sector and
  classification code are a borderline match. The value TRUE indicates
  that the match is uncertain between the PACTA sector and the
  classification. The value FALSE indicates that the match is certainly
  perfect or the classification is certainly out of PACTA's scope.., \*
  `code` (character): Formatted PSIC classification code., \*
  `description` (character): Original PSIC classification sector name.,
  \* `sector` (character): Associated PACTA sector., \* `version`
  (character): Column identifying which year the classification was
  published in..

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
[`naics_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/naics_classification.md),
[`palette_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/palette_colours.md),
[`region_isos`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/region_isos.md),
[`scenario_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scenario_colours.md),
[`sector_classifications`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sector_classifications.md),
[`sector_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sector_colours.md),
[`sic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sic_classification.md),
[`technology_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/technology_colours.md)

## Examples

``` r
head(psic_classification)
#> # A tibble: 6 × 5
#>   description                                    code  sector borderline version
#>   <chr>                                          <chr> <chr>  <lgl>      <chr>  
#> 1 Growing of leguminous crops such as: mongo, s… 1111  not i… FALSE      2019   
#> 2 Growing of ground nuts                         1112  not i… FALSE      2019   
#> 3 Growing of oil seeds (except ground nuts) suc… 1113  not i… FALSE      2019   
#> 4 Growing of  sorghum, wheat                     1114  not i… FALSE      2019   
#> 5 Growing of other cereals (except rice and cor… 1119  not i… FALSE      2019   
#> 6 Growing of paddy rice, lowland, irrigated      1121  not i… FALSE      2019   
```
