# Pick rows where `score` is 1 and `level` per loan is of highest `priority`

When multiple perfect matches are found per loan (e.g. a match at
`direct_loantaker` level and `ultimate_parent` level), we must
prioritize the desired match. By default, the highest `priority` is the
most granular match (i.e. `direct_loantaker`).

## Usage

``` r
prioritize(data, priority = NULL)
```

## Arguments

- data:

  A data frame like the validated output of
  [`match_name()`](https://rmi-pacta.github.io/r2dii.match/reference/match_name.html).
  See *Details* on how to validate `data`.

- priority:

  One of:

  - `NULL`: defaults to the default level priority as returned by
    [`prioritize_level()`](https://rmi-pacta.github.io/r2dii.match/reference/prioritize_level.html).

  - A character vector giving a custom priority.

  - A function to apply to the output of
    [`prioritize_level()`](https://rmi-pacta.github.io/r2dii.match/reference/prioritize_level.html),
    e.g. `rev`.

  - A quosure-style lambda function, e.g. `~ rev(.x)`.

## Value

A data frame with a single row per loan, where `score` is 1 and priority
level is highest.

## Details

**How to validate `data`** Write the output of
[`match_name()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/match_name.md)
into a .csv file with:

    # Writting to current working directory
    matched %>%
      readr::write_csv("matched.csv")

Compare, edit, and save the data manually:

- Open *matched.csv* with any spreadsheet editor (Excel, Google Sheets,
  etc.).

- Compare the columns `name` and `name_abcd` manually to determine if
  the match is valid. Other information can be used in conjunction with
  just the names to ensure the two entities match (sector, internal
  information on the company structure, etc.)

- Edit the data:

  - If you are happy with the match, set the `score` value to `1`.

  - Otherwise set or leave the `score` value to anything other than `1`.

- Save the edited file as, say, *valid_matches.csv*.

Re-read the edited file (validated) with:

    # Reading from current working directory
    valid_matches <- readr::read_csv("valid_matches.csv")

## Handling grouped data

This function ignores but preserves existing groups.

## See also

Other matching functions:
[`crucial_lbk()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/crucial_lbk.md),
[`match_name()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/match_name.md),
[`prioritize_level()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prioritize_level.md)

## Examples

``` r
library(dplyr)
#> 
#> Attaching package: ‘dplyr’
#> The following objects are masked from ‘package:stats’:
#> 
#>     filter, lag
#> The following objects are masked from ‘package:base’:
#> 
#>     intersect, setdiff, setequal, union

# styler: off
matched <- tribble(
  ~sector, ~sector_abcd,  ~score, ~id_loan,                ~level,
   "coal",      "coal",       1,     "aa",     "ultimate_parent",
   "coal",      "coal",       1,     "aa",    "direct_loantaker",
   "coal",      "coal",       1,     "bb", "intermediate_parent",
   "coal",      "coal",       1,     "bb",     "ultimate_parent",
)
# styler: on

prioritize_level(matched)
#> [1] "direct_loantaker"    "intermediate_parent" "ultimate_parent"    

# Using default priority
prioritize(matched)
#> # A tibble: 2 × 5
#>   sector sector_abcd score id_loan level              
#>   <chr>  <chr>       <dbl> <chr>   <chr>              
#> 1 coal   coal            1 aa      direct_loantaker   
#> 2 coal   coal            1 bb      intermediate_parent

# Using the reverse of the default priority
prioritize(matched, priority = rev)
#> # A tibble: 2 × 5
#>   sector sector_abcd score id_loan level          
#>   <chr>  <chr>       <dbl> <chr>   <chr>          
#> 1 coal   coal            1 aa      ultimate_parent
#> 2 coal   coal            1 bb      ultimate_parent

# Same
prioritize(matched, priority = ~ rev(.x))
#> # A tibble: 2 × 5
#>   sector sector_abcd score id_loan level          
#>   <chr>  <chr>       <dbl> <chr>   <chr>          
#> 1 coal   coal            1 aa      ultimate_parent
#> 2 coal   coal            1 bb      ultimate_parent

# Using a custom priority
bad_idea <- c("intermediate_parent", "ultimate_parent", "direct_loantaker")

prioritize(matched, priority = bad_idea)
#> # A tibble: 2 × 5
#>   sector sector_abcd score id_loan level              
#>   <chr>  <chr>       <dbl> <chr>   <chr>              
#> 1 coal   coal            1 bb      intermediate_parent
#> 2 coal   coal            1 aa      ultimate_parent    
```
