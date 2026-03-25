# Match a loanbook to asset-based company data (abcd) by the `name_*` columns

`match_name()` scores the match between names in a loanbook dataset
(columns can be `name_direct_loantaker`, `name_intermediate_parent*` and
`name_ultimate_parent`) with names in an asset-based company data
(column `name_company`). The raw names are first internally transformed,
and aliases are assigned. The similarity between aliases in each of the
loanbook and abcd is scored using
[`stringdist::stringsim()`](https://rdrr.io/pkg/stringdist/man/stringsim.html).

## Usage

``` r
match_name(
  loanbook,
  abcd,
  by_sector = TRUE,
  min_score = 0.8,
  method = "jw",
  p = 0.1,
  overwrite = NULL,
  join_id = NULL,
  sector_classification = default_sector_classification(),
  ...
)
```

## Arguments

- loanbook, abcd:

  data frames structured like
  [r2dii.data::loanbook_demo](https://rmi-pacta.github.io/r2dii.data/reference/loanbook_demo.html)
  and
  [r2dii.data::abcd_demo](https://rmi-pacta.github.io/r2dii.data/reference/abcd_demo.html).

- by_sector:

  Should names only be compared if companies belong to the same
  `sector`?

- min_score:

  A number between 0-1, to set the minimum `score` threshold. A `score`
  of 1 is a perfect match.

- method:

  Method for distance calculation. One of
  `c("osa", "lv", "dl", "hamming", "lcs", "qgram", "cosine", "jaccard", "jw", "soundex")`.
  See
  [stringdist::stringdist-metrics](https://rdrr.io/pkg/stringdist/man/stringdist-metrics.html).

- p:

  Prefix factor for Jaro-Winkler distance. The valid range for `p` is
  `0 <= p <= 0.25`. If `p=0` (default), the Jaro-distance is returned.
  Applies only to `method='jw'`.

- overwrite:

  A data frame used to overwrite the `sector` and/or `name` columns of a
  particular direct loantaker or ultimate parent. To overwrite only
  `sector`, the value in the `name` column should be `NA` and
  vice-versa. This file can be used to manually match loanbook companies
  to abcd.

- join_id:

  A join specification passed to
  [`dplyr::inner_join()`](https://dplyr.tidyverse.org/reference/mutate-joins.html).
  If a character string, it assumes identical join columns between
  `loanbook` and `abcd`. If a named character vector, it uses the name
  as the join column of `loanbook` and the value as the join column of
  `abcd`.

- sector_classification:

  A data frame containing sector classifications in the same format as
  [`r2dii.data::sector_classifications`](https://rmi-pacta.github.io/r2dii.data/reference/sector_classifications.html).
  The default value is
  [`r2dii.data::sector_classifications`](https://rmi-pacta.github.io/r2dii.data/reference/sector_classifications.html).

- ...:

  Arguments passed on to
  [`stringdist::stringsim()`](https://rdrr.io/pkg/stringdist/man/stringsim.html).

## Value

A data frame with the same groups (if any) and columns as `loanbook`,
and the additional columns:

- `id_2dii` - an id used internally by `match_name()` to distinguish
  companies

- `level` - the level of granularity that the loan was matched at (e.g
  `direct_loantaker` or `ultimate_parent`)

- `sector` - the sector of the `loanbook` company

- `sector_abcd` - the sector of the `abcd` company

- `name` - the name of the `loanbook` company

- `name_abcd` - the name of the `abcd` company

- `score` - the score of the match (manually set this to `1` prior to
  calling
  [`prioritize()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prioritize.md)
  to validate the match)

- `source` - determines the source of the match. (equal to `loanbook`
  unless the match is from `overwrite`

The returned rows depend on the argument `min_value` and the result of
the column `score` for each loan: \* If any row has `score` equal to 1,
`match_name()` returns all rows where `score` equals 1, dropping all
other rows. \* If no row has `score` equal to 1,`match_name()` returns
all rows where `score` is equal to or greater than `min_score`. \* If
there is no match the output is a 0-row tibble with the expected column
names – for type stability.

## Assigning aliases

The transformation process used to compare names between loanbook and
abcd datasets applies best practices commonly used in name matching
algorithms:

- Remove special characters.

- Replace language specific characters.

- Abbreviate certain names to reduce their importance in the matching.

- Spell out numbers to increase their importance.

## Handling grouped data

This function ignores but preserves existing groups.

## See also

Other matching functions:
[`crucial_lbk()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/crucial_lbk.md),
[`prioritize()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prioritize.md),
[`prioritize_level()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prioritize_level.md)

## Examples

``` r
library(r2dii.data)
#> 
#> Attaching package: ‘r2dii.data’
#> The following object is masked from ‘package:pacta.loanbook’:
#> 
#>     data_dictionary
library(tibble)

# Small data for examples
loanbook <- head(loanbook_demo, 50)
abcd <- head(abcd_demo, 50)

match_name(loanbook, abcd)
#> # A tibble: 6 × 22
#>   id_loan id_direct_loantaker name_direct_loantaker           id_ultimate_parent
#>   <chr>   <chr>               <chr>                           <chr>             
#> 1 L14     C296                Gallo e figli                   UP3               
#> 2 L17     C290                De luca, De luca e De luca e f… UP6               
#> 3 L21     C286                Gallo Group                     UP63              
#> 4 L30     C274                Sanna SPA                       UP33              
#> 5 L31     C273                Caputo SPA                      UP5               
#> 6 L48     C256                Hellwig AG                      UP201             
#> # ℹ 18 more variables: name_ultimate_parent <chr>, loan_size_outstanding <dbl>,
#> #   loan_size_outstanding_currency <chr>, loan_size_credit_limit <dbl>,
#> #   loan_size_credit_limit_currency <chr>, sector_classification_system <chr>,
#> #   sector_classification_direct_loantaker <chr>, lei_direct_loantaker <chr>,
#> #   isin_direct_loantaker <chr>, id_2dii <chr>, level <chr>, sector <chr>,
#> #   sector_abcd <chr>, name <chr>, name_abcd <chr>, score <dbl>, source <chr>,
#> #   borderline <lgl>

match_name(loanbook, abcd, min_score = 0.9)
#> # A tibble: 3 × 22
#>   id_loan id_direct_loantaker name_direct_loantaker           id_ultimate_parent
#>   <chr>   <chr>               <chr>                           <chr>             
#> 1 L14     C296                Gallo e figli                   UP3               
#> 2 L17     C290                De luca, De luca e De luca e f… UP6               
#> 3 L31     C273                Caputo SPA                      UP5               
#> # ℹ 18 more variables: name_ultimate_parent <chr>, loan_size_outstanding <dbl>,
#> #   loan_size_outstanding_currency <chr>, loan_size_credit_limit <dbl>,
#> #   loan_size_credit_limit_currency <chr>, sector_classification_system <chr>,
#> #   sector_classification_direct_loantaker <chr>, lei_direct_loantaker <chr>,
#> #   isin_direct_loantaker <chr>, id_2dii <chr>, level <chr>, sector <chr>,
#> #   sector_abcd <chr>, name <chr>, name_abcd <chr>, score <dbl>, source <chr>,
#> #   borderline <lgl>

# match on LEI
loanbook <- tibble(
  sector_classification_system = "NACE",
  sector_classification_direct_loantaker = "D35.11",
  id_ultimate_parent = "UP15",
  name_ultimate_parent = "Won't fuzzy match",
  id_direct_loantaker = "C294",
  name_direct_loantaker = "Won't fuzzy match",
  lei_direct_loantaker = "LEI123"
)

abcd <- tibble(
  name_company = "alpine knits india pvt. limited",
  sector = "power",
  lei = "LEI123"
)

match_name(loanbook, abcd, join_id = c(lei_direct_loantaker = "lei"))
#> # A tibble: 1 × 15
#>   sector_classification_system sector_classification_direct…¹ id_ultimate_parent
#>   <chr>                        <chr>                          <chr>             
#> 1 NACE                         D35.11                         UP15              
#> # ℹ abbreviated name: ¹​sector_classification_direct_loantaker
#> # ℹ 12 more variables: name_ultimate_parent <chr>, id_direct_loantaker <chr>,
#> #   name_direct_loantaker <chr>, lei_direct_loantaker <chr>, sector <chr>,
#> #   borderline <lgl>, name_abcd <chr>, sector_abcd <chr>, score <dbl>,
#> #   source <chr>, level <chr>, name <chr>

# Use your own `sector_classifications`
your_classifications <- tibble(
  sector = "power",
  borderline = FALSE,
  code = "D35.11",
  code_system = "XYZ"
)

loanbook <- tibble(
  sector_classification_system = "XYZ",
  sector_classification_direct_loantaker = "D35.11",
  id_ultimate_parent = "UP15",
  name_ultimate_parent = "Alpine Knits India Pvt. Limited",
  id_direct_loantaker = "C294",
  name_direct_loantaker = "Yuamen Xinneng Thermal Power Co Ltd"
)

abcd <- tibble(
  name_company = "alpine knits india pvt. limited",
  sector = "power"
)

match_name(loanbook, abcd, sector_classification = your_classifications)
#> # A tibble: 1 × 15
#>   sector_classification_system sector_classification_direct…¹ id_ultimate_parent
#>   <chr>                        <chr>                          <chr>             
#> 1 XYZ                          D35.11                         UP15              
#> # ℹ abbreviated name: ¹​sector_classification_direct_loantaker
#> # ℹ 12 more variables: name_ultimate_parent <chr>, id_direct_loantaker <chr>,
#> #   name_direct_loantaker <chr>, id_2dii <chr>, level <chr>, sector <chr>,
#> #   sector_abcd <chr>, name <chr>, name_abcd <chr>, score <dbl>, source <chr>,
#> #   borderline <lgl>
```
