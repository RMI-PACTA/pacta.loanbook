# Dataset to bridge (translate) common sector-classification codes

This dataset serves as a translation key between common
sector-classification systems and sectors relevant to the 'PACTA' tool
(<https://www.transitionmonitor.com/>).

## Usage

``` r
gics_classification
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with 282
rows and 5 columns.

## Definitions

- `borderline` (logical): Flag indicating if PACTA sector and
  classification code are a borderline match. The value TRUE indicates
  that the match is uncertain between the PACTA sector and the
  classification. The value FALSE indicates that the match is certainly
  perfect or the classification is certainly out of PACTA's scope.., \*
  `code` (character): Original GICS code., \* `description` (character):
  Original GICS description., \* `sector` (character): Associated PACTA
  sector., \* `version` (character): Column identifying to which GICS
  version the code belongs.

## Details

Classification datasets help to standardize sector classification codes
from the wild to a relevant subset including 'power', 'oil and gas',
'coal', 'automotive', 'aviation', 'concrete', 'steel', and 'shipping'.

## See also

Other datasets:
[`increasing_or_decreasing`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/increasing_or_decreasing.md),
[`isic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/isic_classification.md),
[`iso_codes`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/iso_codes.md),
[`nace_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/nace_classification.md),
[`naics_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/naics_classification.md),
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
head(gics_classification)
#> # A tibble: 6 × 5
#>   description                                    code  sector borderline version
#>   <chr>                                          <chr> <chr>  <lgl>      <chr>  
#> 1 Energy                                         10    not i… FALSE      2023   
#> 2 Energy                                         1010  not i… FALSE      2023   
#> 3 Energy Equipment & Services                    1010… not i… FALSE      2023   
#> 4 Drilling contractors or owners of drilling ri… 1010… not i… FALSE      2023   
#> 5 Manufacturers of equipment, including drillin… 1010… not i… FALSE      2023   
#> 6 Oil, Gas & Consumable Fuels                    1010… oil a… FALSE      2023   
```
