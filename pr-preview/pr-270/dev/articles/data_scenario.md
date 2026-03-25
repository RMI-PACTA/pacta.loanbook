# Scenario

## Climate transition scenario dataset (technology pathways for target market share calculation)

Climate transition scenario dataset, prepared for the PACTA for Banks
software, e.g. based on scenarios from the International Energy Agency
(IEA). Includes the relative change through time in production across
industrial sectors and technologies.

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
package provides an example climate transition scenario dataset
`scenario_demo_2020`.

``` r
scenario_demo_2020
#> # A tibble: 1,512 × 8
#>    scenario sector     technology region  year  tmsr    smsp scenario_source
#>    <chr>    <chr>      <chr>      <chr>  <int> <dbl>   <dbl> <chr>          
#>  1 cps      automotive electric   global  2020  1    0       demo_2020      
#>  2 cps      automotive hybrid     global  2020  1    0       demo_2020      
#>  3 cps      automotive ice        global  2020  1    0       demo_2020      
#>  4 cps      automotive electric   global  2021  1.12 0.00108 demo_2020      
#>  5 cps      automotive hybrid     global  2021  1.12 0.0165  demo_2020      
#>  6 cps      automotive ice        global  2021  1.02 0.0188  demo_2020      
#>  7 cps      automotive electric   global  2022  1.24 0.00213 demo_2020      
#>  8 cps      automotive hybrid     global  2022  1.24 0.0326  demo_2020      
#>  9 cps      automotive ice        global  2022  1.04 0.0378  demo_2020      
#> 10 cps      automotive electric   global  2023  1.35 0.00316 demo_2020      
#> # ℹ 1,502 more rows
```

## Climate transition scenario dataset (CO² intensity pathways for sectoral decarbonization approach)

CO² intensity climate transition scenario dataset, prepared for the
PACTA for Banks software, e.g. based on scenarios from the International
Energy Agency (IEA). Includes the change through time in
production-based emission intensity across industrial sectors.

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
package provides an example CO² intensity climate transition scenario
dataset `co2_intensity_scenario_demo`.

``` r
co2_intensity_scenario_demo
#> # A tibble: 22 × 7
#>    scenario_source scenario sector region  year emission_factor_unit              emission_factor
#>    <chr>           <chr>    <chr>  <chr>  <dbl> <chr>                                       <dbl>
#>  1 demo_2020       demo     cement global  2020 tonnes of CO2 per tonne of Cement            0.7 
#>  2 demo_2020       demo     cement global  2021 tonnes of CO2 per tonne of Cement            0.64
#>  3 demo_2020       demo     cement global  2022 tonnes of CO2 per tonne of Cement            0.58
#>  4 demo_2020       demo     cement global  2023 tonnes of CO2 per tonne of Cement            0.52
#>  5 demo_2020       demo     cement global  2024 tonnes of CO2 per tonne of Cement            0.46
#>  6 demo_2020       demo     cement global  2025 tonnes of CO2 per tonne of Cement            0.4 
#>  7 demo_2020       demo     cement global  2030 tonnes of CO2 per tonne of Cement            0.39
#>  8 demo_2020       demo     cement global  2035 tonnes of CO2 per tonne of Cement            0.38
#>  9 demo_2020       demo     cement global  2040 tonnes of CO2 per tonne of Cement            0.25
#> 10 demo_2020       demo     cement global  2045 tonnes of CO2 per tonne of Cement            0.2 
#> # ℹ 12 more rows
```
