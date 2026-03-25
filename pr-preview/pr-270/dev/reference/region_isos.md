# A dataset outlining various region definitions

This dataset maps codes representing countries to regions.

For information about the ISO standard for country codes see
<https://www.iso.org/iso-3166-country-codes.html>.

## Usage

``` r
region_isos
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with
9262 rows and 3 columns.

## Definitions

- `isos` (character): Countries in region, defined by iso code., \*
  `region` (character): Benchmark region name., \* `source` (character):
  Source publication from which the regions are defined.

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
[`scenario_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scenario_colours.md),
[`sector_classifications`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sector_classifications.md),
[`sector_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sector_colours.md),
[`sic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sic_classification.md),
[`technology_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/technology_colours.md)

## Examples

``` r
head(region_isos)
#> # A tibble: 6 × 3
#>   region             source   isos 
#>   <chr>              <chr>    <chr>
#> 1 advanced economies weo_2019 bg   
#> 2 advanced economies weo_2019 hr   
#> 3 advanced economies weo_2019 cy   
#> 4 advanced economies weo_2019 mt   
#> 5 advanced economies weo_2019 ro   
#> 6 advanced economies weo_2019 au   
```
