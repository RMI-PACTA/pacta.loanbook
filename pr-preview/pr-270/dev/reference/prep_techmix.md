# Prepare data for plotting technology mix

Prepare data for plotting technology mix

## Usage

``` r
prep_techmix(
  data,
  convert_label = identity,
  span_5yr = FALSE,
  convert_tech_label = identity
)
```

## Arguments

- data:

  A data frame. Requirements:

  - The structure must be like
    [market_share_demo](https://rmi-pacta.github.io/r2dii.plot/reference/market_share_demo.html).

  - The following columns must have a single value: `sector`, `region`,
    `scenario_source`.

  - The column `metric` must have a portfolio (e.g. "projected"), a
    benchmark (e.g. "corporate_economy"), and a single `scenario` (e.g.
    "target_sds").

  - (Optional) If present, the column `label` is used for data labels.

  - (Optional) If present, the column `label_tech` is used for
    technology labels.

- convert_label:

  A symbol. The unquoted name of a function to apply to y-axis labels.
  For example:

  - To convert labels to uppercase use `convert_label = toupper`.

  - To get the default behavior of `qplot_techmix` use
    `convert_label = recode_metric_techmix`.

- span_5yr:

  Logical. Use `TRUE` to restrict the time span to 5 years from the
  start year (the default behavior of
  [`qplot_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/qplot_techmix.md)),
  or use `FALSE` to impose no restriction.

- convert_tech_label:

  A symbol. The unquoted name of a function to apply to technology
  legend labels. For example, to convert labels to uppercase use
  `convert_tech_label = toupper`. To get the default behavior of
  [`qplot_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/qplot_techmix.md)
  use `convert_tech_label = spell_out_technology`.

## Value

A data-frame ready to be plotted using
[`plot_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_techmix.md).

## See also

Other plotting functions:
[`plot_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_emission_intensity.md),
[`plot_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_techmix.md),
[`plot_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_trajectory.md),
[`prep_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_emission_intensity.md),
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
data <- subset(
  market_share_demo,
  scenario_source == "demo_2020" &
    sector == "power" &
    region == "global" &
    metric %in% c("projected", "corporate_economy", "target_sds")
)

prep_techmix(data)
#> The `technology_share` values are plotted for extreme years.
#> Do you want to plot different years? E.g. filter data with:`subset(data, year %in% c(2020, 2030))`.
#> # A tibble: 30 × 13
#>    sector technology  year region scenario_source metric     production
#>    <chr>  <chr>      <int> <chr>  <chr>           <chr>           <dbl>
#>  1 power  coalcap     2020 global demo_2020       projected      21766.
#>  2 power  coalcap     2040 global demo_2020       projected      22531.
#>  3 power  coalcap     2040 global demo_2020       target_sds      5027.
#>  4 power  gascap      2020 global demo_2020       projected       4602.
#>  5 power  gascap      2040 global demo_2020       projected       2808.
#>  6 power  gascap      2040 global demo_2020       target_sds      3289.
#>  7 power  hydrocap    2020 global demo_2020       projected      23261.
#>  8 power  hydrocap    2040 global demo_2020       projected      24599.
#>  9 power  hydrocap    2040 global demo_2020       target_sds     24920.
#> 10 power  nuclearcap  2020 global demo_2020       projected          0 
#> # ℹ 20 more rows
#> # ℹ 6 more variables: technology_share <dbl>, scope <chr>,
#> #   percentage_of_initial_production_by_scope <dbl>, label <chr>,
#> #   label_tech <chr>, value <dbl>
```
