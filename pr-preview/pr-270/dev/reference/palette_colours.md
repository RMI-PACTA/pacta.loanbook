# Colour datasets

All datasets have at least two columns:

- `label`: Text label of the colour.

- `hex`: Hex code of the colour.

## Usage

``` r
palette_colours
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with 9
rows and 2 columns.

## Details

In `scenario_colours`, colours are ordered from red to green to be used
in trajectory charts.

## See also

Other datasets:
[`gics_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/gics_classification.md),
[`increasing_or_decreasing`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/increasing_or_decreasing.md),
[`isic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/isic_classification.md),
[`iso_codes`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/iso_codes.md),
[`nace_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/nace_classification.md),
[`naics_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/naics_classification.md),
[`psic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/psic_classification.md),
[`region_isos`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/region_isos.md),
[`scenario_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scenario_colours.md),
[`sector_classifications`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sector_classifications.md),
[`sector_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sector_colours.md),
[`sic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sic_classification.md),
[`technology_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/technology_colours.md)

## Examples

``` r
palette_colours
#> # A tibble: 9 × 2
#>   label       hex    
#>   <chr>       <chr>  
#> 1 dark_blue   #1b324f
#> 2 green       #00c082
#> 3 orange      #ff9623
#> 4 grey        #d0d7e1
#> 5 dark_purple #574099
#> 6 yellow      #f2e06e
#> 7 soft_blue   #78c4d6
#> 8 ruby_red    #a63d57
#> 9 moss_green  #4a5e54

scenario_colours
#> # A tibble: 5 × 2
#>   label        hex    
#>   <chr>        <chr>  
#> 1 dark_green   #768555
#> 2 light_green  #9CAB7C
#> 3 dark_yellow  #FFFFCC
#> 4 light_yellow #FDE291
#> 5 red          #E07B73

sector_colours
#> # A tibble: 8 × 2
#>   label      hex    
#>   <chr>      <chr>  
#> 1 automotive #78C4D6
#> 2 aviation   #00c082
#> 3 cement     #c1b358
#> 4 coal       #4e3b37
#> 5 oil&gas    #181716
#> 6 power      #a63603
#> 7 shipping   #574099
#> 8 steel      #a63d57

technology_colours
#> # A tibble: 18 × 3
#>    sector       technology    hex    
#>    <chr>        <chr>         <chr>  
#>  1 power        coalcap       #7A2701
#>  2 power        oilcap        #a63603
#>  3 power        gascap        #e6550d
#>  4 power        nuclearcap    #fd8d3c
#>  5 power        hydrocap      #fdbe85
#>  6 power        renewablescap #ffd4ad
#>  7 automotive   ice_hdv       #548995
#>  8 automotive   ice           #609cab
#>  9 automotive   hybrid_hdv    #6cb0c0
#> 10 automotive   hybrid        #78c4d6
#> 11 automotive   fuelcell      #93cfde
#> 12 automotive   electric_hdv  #aedbe6
#> 13 automotive   electric      #c9e7ee
#> 14 oil&gas      gas           #b9b5b0
#> 15 oil&gas      oil           #181716
#> 16 fossil fuels gas           #b9b5b0
#> 17 fossil fuels oil           #181716
#> 18 fossil fuels coal          #4e3b37
```
