# Data Dictionary

A table of column names and descriptions of data frames used or exported
by the functions in this package.

## Usage

``` r
data_dictionary
```

## Format

### `data_dictionary`

- dataset:

  Name of the dataset

- column:

  Name of the column

- typeof:

  Type of the column

- definition:

  Definition of the column

## Examples

``` r
data_dictionary
#> # A tibble: 208 × 4
#>    dataset   column               typeof    definition                          
#>    <chr>     <chr>                <chr>     <chr>                               
#>  1 abcd_demo company_id           character The id of the company owning the as…
#>  2 abcd_demo emission_factor      double    Company level emission factor of th…
#>  3 abcd_demo emission_factor_unit character The units that the emission factor …
#>  4 abcd_demo is_ultimate_owner    logical   Flag if company is the ultimate par…
#>  5 abcd_demo lei                  character The legal entity identifier of the …
#>  6 abcd_demo name_company         character The name of the company owning the …
#>  7 abcd_demo plant_location       character Country where asset is located      
#>  8 abcd_demo production           double    Company level production of the tec…
#>  9 abcd_demo production_unit      character The units that production is measur…
#> 10 abcd_demo sector               character Sector to which the asset belongs   
#> # ℹ 198 more rows
```
