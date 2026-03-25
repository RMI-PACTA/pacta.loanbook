# Dataset to bridge (translate) common sector-classification codes

This dataset serves as a translation key between common
sector-classification systems and sectors relevant to the 'PACTA' tool
(<https://www.transitionmonitor.com/>).

## Usage

``` r
isic_classification
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with 830
rows and 6 columns.

## Definitions

- `borderline` (logical): Flag indicating if PACTA sector and
  classification code are a borderline match. The value TRUE indicates
  that the match is uncertain between the PACTA sector and the
  classification. The value FALSE indicates that the match is certainly
  perfect or the classification is certainly out of PACTA's scope.., \*
  `code` (character): ISIC Rev 5 code with top-level letter prepended.,
  \* `description` (character): Original ISIC Rev 5 title., \*
  `original_code` (character): Original ISIC Rev 5 code., \* `revision`
  (character): Column identifying to which ISIC revision the code
  belongs.., \* `sector` (character): Associated PACTA sector.

## Details

Classification datasets help to standardize sector classification codes
from the wild to a relevant subset including 'power', 'oil and gas',
'coal', 'automotive', 'aviation', 'concrete', 'steel', and 'shipping'.

## See also

Other datasets:
[`gics_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/gics_classification.md),
[`increasing_or_decreasing`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/increasing_or_decreasing.md),
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
head(isic_classification)
#> # A tibble: 6 × 6
#>   original_code description                     code  sector borderline revision
#>   <chr>         <chr>                           <chr> <chr>  <lgl>      <chr>   
#> 1 A             Agriculture, forestry and fish… A     not i… FALSE      5       
#> 2 01            Crop and animal production, hu… A01   not i… FALSE      5       
#> 3 011           Growing of non-perennial crops  A011  not i… FALSE      5       
#> 4 0111          Growing of cereals (except ric… A0111 not i… FALSE      5       
#> 5 0112          Growing of rice                 A0112 not i… FALSE      5       
#> 6 0113          Growing of vegetables and melo… A0113 not i… FALSE      5       
```
