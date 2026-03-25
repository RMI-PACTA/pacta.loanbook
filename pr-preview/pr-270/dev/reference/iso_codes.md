# Countries and codes

This dataset maps countries to codes.

For information about the ISO standard for country codes see
<https://www.iso.org/iso-3166-country-codes.html>.

## Usage

``` r
iso_codes
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with 286
rows and 2 columns.

## Definitions

- `country` (character): Country name., \* `country_iso` (character):
  Corresponding ISO code.

## See also

Other datasets:
[`gics_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/gics_classification.md),
[`increasing_or_decreasing`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/increasing_or_decreasing.md),
[`isic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/isic_classification.md),
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
head(iso_codes)
#> # A tibble: 6 × 2
#>   country        country_iso
#>   <chr>          <chr>      
#> 1 afghanistan    af         
#> 2 albania        al         
#> 3 algeria        dz         
#> 4 american samoa as         
#> 5 andorra        ad         
#> 6 angola         ao         
```
