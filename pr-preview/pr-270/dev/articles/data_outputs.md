# PACTA Outputs

## match_name() output

The output of
[`match_name()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/match_name.md)
has the following columns:

## prioritize() output

The output of
[`prioritize()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prioritize.md)
has the following columns:

## target_market_share() output

The output of
[`target_market_share()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/target_market_share.md)
has the following columns:

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
package provides a demo
[`target_market_share()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/target_market_share.md)
output dataset `market_share_demo`.

``` r
market_share_demo
#> # A tibble: 802 × 10
#>    sector     technology  year region scenario_source metric     production technology_share scope  percentage_of_initial_production_by_scope
#>    <chr>      <chr>      <int> <chr>  <chr>           <chr>           <dbl>            <dbl> <chr>                                      <dbl>
#>  1 automotive electric    2020 global demo_2020       projected     324592.           0.0759 sector                                   0      
#>  2 automotive electric    2020 global demo_2020       target_cps    324592.           0.0759 sector                                   0      
#>  3 automotive electric    2020 global demo_2020       target_sds    324592.           0.0759 sector                                   0      
#>  4 automotive electric    2020 global demo_2020       target_sps    324592.           0.0759 sector                                   0      
#>  5 automotive electric    2021 global demo_2020       projected     339656.           0.0786 sector                                   0.00352
#>  6 automotive electric    2021 global demo_2020       target_cps    329191.           0.0744 sector                                   0.00108
#>  7 automotive electric    2021 global demo_2020       target_sds    352505.           0.0809 sector                                   0.00653
#>  8 automotive electric    2021 global demo_2020       target_sps    330435.           0.0747 sector                                   0.00137
#>  9 automotive electric    2022 global demo_2020       projected     354720.           0.0813 sector                                   0.00705
#> 10 automotive electric    2022 global demo_2020       target_cps    333693.           0.0730 sector                                   0.00213
#> # ℹ 792 more rows
```

## target_sda() output

The output of
[`target_sda()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/target_sda.md)
has the following columns:

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
package provides a demo
[`target_sda()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/target_sda.md)
output dataset `sda_demo`.

``` r
sda_demo
#> # A tibble: 110 × 6
#>    sector  year region             scenario_source emission_factor_metric emission_factor_value
#>    <chr>  <dbl> <chr>              <chr>           <chr>                                  <dbl>
#>  1 cement  2020 advanced economies demo_2020       projected                             0.0230
#>  2 cement  2020 developing asia    demo_2020       projected                             0.0595
#>  3 cement  2020 global             demo_2020       projected                             0.664 
#>  4 cement  2021 advanced economies demo_2020       projected                             0.0232
#>  5 cement  2021 developing asia    demo_2020       projected                             0.0594
#>  6 cement  2021 global             demo_2020       projected                             0.665 
#>  7 cement  2022 advanced economies demo_2020       projected                             0.0233
#>  8 cement  2022 developing asia    demo_2020       projected                             0.0592
#>  9 cement  2022 global             demo_2020       projected                             0.666 
#> 10 cement  2023 advanced economies demo_2020       projected                             0.0235
#> # ℹ 100 more rows
```

## prep_techmix() output

The output of
[`prep_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_techmix.md)
has the following columns:

## prep_emission_intensity() output

The output of
[`prep_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_emission_intensity.md)
has the following columns:

## prep_trajectory() output

The output of
[`prep_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_trajectory.md)
has the following columns:
