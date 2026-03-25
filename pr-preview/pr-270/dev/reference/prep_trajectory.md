# Prepare data for a trajectory plot

Prepare data for a trajectory plot

## Usage

``` r
prep_trajectory(
  data,
  convert_label = identity,
  span_5yr = FALSE,
  value_col = "percentage_of_initial_production_by_scope"
)
```

## Arguments

- data:

  A data frame. Requirements:

  - The structure must be like
    [market_share_demo](https://rmi-pacta.github.io/r2dii.plot/reference/market_share_demo.html).

  - The following columns must have a single value: `sector`,
    `technology`, `region`, `scenario_source`.

  - (Optional) If present, the column `label` is used for data labels.

- convert_label:

  A symbol. The unquoted name of a function to apply to y-axis labels.
  For example:

  - To convert labels to uppercase use `convert_label = toupper`.

  - To get the default behavior of `qplot_trajectory` use
    `convert_label = recode_metric_trajectory`.

- span_5yr:

  Logical. Use `TRUE` to restrict the time span to 5 years from the
  start year (the default behavior of
  [`qplot_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/qplot_trajectory.md)),
  or use `FALSE` to impose no restriction.

- value_col:

  Character. Name of the column to be used as a value to be plotted.

## Value

A data-frame ready to be plotted using
[`plot_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_trajectory.md).

## See also

Other plotting functions:
[`plot_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_emission_intensity.md),
[`plot_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_techmix.md),
[`plot_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_trajectory.md),
[`prep_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_emission_intensity.md),
[`prep_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_techmix.md),
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
data <- subset(
  market_share_demo,
  sector == "power" &
    technology == "renewablescap" &
    region == "global" &
    scenario_source == "demo_2020"
)

prep_trajectory(data)
#> # A tibble: 105 × 12
#>    sector technology     year region scenario_source metric     production
#>    <chr>  <chr>         <int> <chr>  <chr>           <chr>           <dbl>
#>  1 power  renewablescap  2020 global demo_2020       projected       7380.
#>  2 power  renewablescap  2020 global demo_2020       target_cps      7380.
#>  3 power  renewablescap  2020 global demo_2020       target_sds      7380.
#>  4 power  renewablescap  2020 global demo_2020       target_sps      7380.
#>  5 power  renewablescap  2021 global demo_2020       projected       7361.
#>  6 power  renewablescap  2021 global demo_2020       target_cps      8077.
#>  7 power  renewablescap  2021 global demo_2020       target_sds      8539.
#>  8 power  renewablescap  2021 global demo_2020       target_sps      8221.
#>  9 power  renewablescap  2022 global demo_2020       projected       7342.
#> 10 power  renewablescap  2022 global demo_2020       target_cps      8774.
#> # ℹ 95 more rows
#> # ℹ 5 more variables: technology_share <dbl>, scope <chr>,
#> #   percentage_of_initial_production_by_scope <dbl>, label <chr>, value <dbl>
```
