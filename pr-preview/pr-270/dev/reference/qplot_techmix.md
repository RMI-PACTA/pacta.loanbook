# Create a quick techmix plot

Compared to
[`plot_techmix()`](https://rmi-pacta.github.io/r2dii.plot/reference/plot_techmix.html)
this function:

- is restricted to plotting future as 5 years from the start year,

- outputs pretty bar labels, based on metric column,

- outputs pretty legend labels, based on technology column,

- outputs a title.

## Usage

``` r
qplot_techmix(data)
```

## Arguments

- data:

  A data frame like the output of
  [`prep_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_techmix.md).

## Value

An object of class "ggplot".

## See also

Other plotting functions:
[`plot_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_emission_intensity.md),
[`plot_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_techmix.md),
[`plot_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_trajectory.md),
[`prep_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_emission_intensity.md),
[`prep_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_techmix.md),
[`prep_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_trajectory.md),
[`qplot_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/qplot_emission_intensity.md),
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
    region == "global" &
    scenario_source == "demo_2020" &
    metric %in% c("projected", "corporate_economy", "target_sds")
)

qplot_techmix(data)
#> The `technology_share` values are plotted for extreme years.
#> Do you want to plot different years? E.g. filter . with:`subset(., year %in% c(2020, 2030))`.
```
