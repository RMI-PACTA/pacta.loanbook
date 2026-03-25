# Prepare data for a emission intensity plot

Prepare data for a emission intensity plot

## Usage

``` r
prep_emission_intensity(data, convert_label = identity, span_5yr = FALSE)
```

## Arguments

- data:

  A data frame. Requirements:

  - The structure must be like
    [sda_demo](https://rmi-pacta.github.io/r2dii.plot/reference/sda_demo.html).

  - The column `sector` must have a single value (e.g. "cement").

  - (Optional) If present, the column `label` is used for data labels.

- convert_label:

  A symbol. The unquoted name of a function to apply to y-axis labels.
  For example:

  - To convert labels to uppercase use `convert_label = toupper`.

  - To get the default behavior of `qplot_emission_intensity` use
    `convert_label = to_title`.

- span_5yr:

  Logical. Use `TRUE` to restrict the time span to 5 years from the
  start year (the default behavior of
  [`qplot_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/qplot_emission_intensity.md)),
  or use `FALSE` to impose no restriction.

## Value

A data-frame ready to be plotted using
[`plot_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_emission_intensity.md).

## See also

Other plotting functions:
[`plot_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_emission_intensity.md),
[`plot_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_techmix.md),
[`plot_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_trajectory.md),
[`prep_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_techmix.md),
[`prep_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_trajectory.md),
[`qplot_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/qplot_emission_intensity.md),
[`qplot_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/qplot_techmix.md),
[`qplot_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/qplot_trajectory.md),
[`recode_metric_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/recode_metric_techmix.md),
[`recode_metric_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/recode_metric_trajectory.md),
[`scale_colour_r2dii()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scale_colour_r2dii.md),
[`scale_colour_r2dii_sector()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scale_colour_r2dii_sector.md),
[`scale_colour_r2dii_tech()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scale_colour_r2dii_tech.md),
[`scale_fill_r2dii()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scale_fill_r2dii.md),
[`scale_fill_r2dii_sector()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scale_fill_r2dii_sector.md),
[`scale_fill_r2dii_tech()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scale_fill_r2dii_tech.md),
[`spell_out_technology()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/spell_out_technology.md),
[`theme_2dii()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/theme_2dii.md),
[`to_title()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/to_title.md)

## Examples

``` r
# `data` must meet documented "Requirements"
data <- subset(sda_demo, sector == "cement" & region == "global")
prep_emission_intensity(data)
#> # A tibble: 74 × 7
#>    sector year       region scenario_source emission_factor_metric
#>    <chr>  <date>     <chr>  <chr>           <chr>                 
#>  1 cement 2020-01-01 global demo_2020       projected             
#>  2 cement 2021-01-01 global demo_2020       projected             
#>  3 cement 2022-01-01 global demo_2020       projected             
#>  4 cement 2023-01-01 global demo_2020       projected             
#>  5 cement 2024-01-01 global demo_2020       projected             
#>  6 cement 2025-01-01 global demo_2020       projected             
#>  7 cement 2020-01-01 global demo_2020       corporate_economy     
#>  8 cement 2021-01-01 global demo_2020       corporate_economy     
#>  9 cement 2022-01-01 global demo_2020       corporate_economy     
#> 10 cement 2023-01-01 global demo_2020       corporate_economy     
#> # ℹ 64 more rows
#> # ℹ 2 more variables: emission_factor_value <dbl>, label <chr>
```
