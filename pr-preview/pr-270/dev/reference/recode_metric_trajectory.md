# Replicate labels produced with `qplot_*()` functions

- [`to_title()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/to_title.md)
  converts labels like
  [`qplot_emission_intensity()`](https://rmi-pacta.github.io/r2dii.plot/reference/qplot_emission_intensity.html).

- `recode_metric_trajectory()` converts labels like
  [`qplot_trajectory()`](https://rmi-pacta.github.io/r2dii.plot/reference/qplot_trajectory.html).

- [`recode_metric_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/recode_metric_techmix.md)
  converts labels like
  [`qplot_techmix()`](https://rmi-pacta.github.io/r2dii.plot/reference/qplot_techmix.html).

- [`spell_out_technology()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/spell_out_technology.md)
  converts technology labels like
  [`qplot_techmix()`](https://rmi-pacta.github.io/r2dii.plot/reference/qplot_techmix.html).

## Usage

``` r
recode_metric_trajectory(x)
```

## Arguments

- x:

  A character vector.

## Value

A character vector.

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
to_title(c("a.string", "another_STRING"))
#> [1] "A String"       "Another STRING"

metric <- c("projected", "corporate_economy", "target_xyz", "else")
recode_metric_trajectory(metric)
#> [1] "Portfolio"         "Corporate Economy" "XYZ"              
#> [4] "Else"             

recode_metric_techmix(metric)
#> [1] "Portfolio"    "Benchmark"    "XYZ Scenario" "Benchmark"   

spell_out_technology(c("gas", "ice", "coalcap", "hdv"))
#> [1] "Gas"                 "ICE"                 "Coal Capacity"      
#> [4] "Heavy Duty Vehicles"
```
