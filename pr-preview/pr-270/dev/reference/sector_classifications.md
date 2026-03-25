# A view of available sector classification datasets

This dataset lists all sector classification code standards used by
'PACTA' (<https://www.transitionmonitor.com/>).

## Usage

``` r
sector_classifications
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with
6559 rows and 4 columns.

## Definitions

- `borderline` (character): Flag indicating if 2dii sector and
  classification code are a borderline match. The value TRUE indicates
  that the match is uncertain between the 2dii sector and the
  classification. The value FALSE indicates that the match is certainly
  perfect or the classification is certainly out of 2dii's scope.., \*
  `code` (character): Formatted code., \* `code_system` (character):
  Code system., \* `sector` (character): Associated 2dii sector.

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
[`psic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/psic_classification.md),
[`region_isos`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/region_isos.md),
[`scenario_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scenario_colours.md),
[`sector_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sector_colours.md),
[`sic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sic_classification.md),
[`technology_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/technology_colours.md)

## Examples

``` r
head(sector_classifications)
#> # A tibble: 6 × 4
#>   sector       borderline code     code_system
#>   <chr>        <lgl>      <chr>    <chr>      
#> 1 not in scope FALSE      10       GICS       
#> 2 not in scope FALSE      1010     GICS       
#> 3 not in scope FALSE      101010   GICS       
#> 4 not in scope FALSE      10101010 GICS       
#> 5 not in scope FALSE      10101020 GICS       
#> 6 oil and gas  FALSE      101020   GICS       
```
