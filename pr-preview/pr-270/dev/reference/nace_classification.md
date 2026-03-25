# Dataset to bridge (translate) common sector-classification codes

This dataset serves as a translation key between common
sector-classification systems and sectors relevant to the 'PACTA' tool
(<https://www.transitionmonitor.com/>).

## Usage

``` r
nace_classification
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with
1047 rows and 6 columns.

## Definitions

- `borderline` (logical): Flag indicating if PACTA sector and
  classification code are a borderline match. The value TRUE indicates
  that the match is uncertain between the PACTA sector and the
  classification. The value FALSE indicates that the match is certainly
  perfect or the classification is certainly out of PACTA's scope., \*
  `code` (character): NACE version 2.1 code with top-level letter
  prepended., \* `description` (character): Original NACE version 2.1
  description., \* `original_code` (character): Original NACE version
  2.1 code., \* `sector` (character): Associated PACTA sector., \*
  `version` (character): Column identifying to which NACE version the
  code belongs.

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
head(nace_classification)
#> # A tibble: 6 × 6
#>   original_code description                      code  sector borderline version
#>   <chr>         <chr>                            <chr> <chr>  <lgl>      <chr>  
#> 1 01            01 Crop and animal production, … A01   not i… FALSE      2.1    
#> 2 01.1          01.1 Growing of non-perennial c… A01.1 not i… FALSE      2.1    
#> 3 01.11         01.11 Growing of cereals, other… A01.… not i… FALSE      2.1    
#> 4 01.12         01.12 Growing of rice            A01.… not i… FALSE      2.1    
#> 5 01.13         01.13 Growing of vegetables and… A01.… not i… FALSE      2.1    
#> 6 01.14         01.14 Growing of sugar cane      A01.… not i… FALSE      2.1    
```
