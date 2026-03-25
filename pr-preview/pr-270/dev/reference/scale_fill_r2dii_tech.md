# Custom PACTA technology colour and fill scales

A custom discrete colour and fill scales with colours from the PACTA
technology palette.

## Usage

``` r
scale_fill_r2dii_tech(sector, technologies = NULL, ...)
```

## Arguments

- sector:

  A string. Sector name specifying a colour palette. Run
  `unique(r2dii.plot:::technology_colours$sector)` to see available
  sectors.

- technologies:

  A character vector. Specifies technologies to use as colours and their
  order. Run `unique(r2dii.plot:::technology_colours$technology)` to see
  available technologies (pay attention if they match the `sector`).
  Similar to `value` parameter in
  [`ggplot2::scale_colour_manual()`](https://ggplot2.tidyverse.org/reference/scale_manual.html).

- ...:

  Other parameters passed on to
  [`ggplot2::discrete_scale()`](https://ggplot2.tidyverse.org/reference/discrete_scale.html).

## Value

An object of class "ScaleDiscrete".

## See also

Other plotting functions:
[`plot_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_emission_intensity.md),
[`plot_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_techmix.md),
[`plot_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_trajectory.md),
[`prep_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_emission_intensity.md),
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
[`spell_out_technology()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/spell_out_technology.md),
[`theme_2dii()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/theme_2dii.md),
[`to_title()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/to_title.md)

## Examples

``` r
library(ggplot2, warn.conflicts = FALSE)

ggplot(mpg) +
  geom_point(aes(displ, hwy, color = class)) +
  scale_colour_r2dii_tech("automotive")


ggplot(mpg) +
  geom_histogram(aes(cyl, fill = class), position = "dodge", bins = 5) +
  scale_fill_r2dii_tech("automotive")
```
