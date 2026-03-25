# ABCD

## ABCD dataset

An asset-based company dataset (ABCD) about physical assets (e.g. a wind
turbine power plant, or a steel mill), aggregated to company-level.
These data are used to assess the climate alignment of financial
portfolios with climate transition pathways. It is usually based on data
from market-intelligence databases.

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
package provides an example abcd dataset `abcd_demo`.

``` r
abcd_demo
#> # A tibble: 4,972 × 12
#>    company_id name_company                          lei                  sector technology          production_unit  year production emission_factor plant_location is_ultimate_owner emission_factor_unit             
#>    <chr>      <chr>                                 <chr>                <chr>  <chr>               <chr>           <int>      <dbl>           <dbl> <chr>          <lgl>             <chr>                            
#>  1 175        Giordano, Giordano e Giordano e figli 18500033XH6RG332SX89 power  hydrocap            MW               2020    121032.          NA     MY             TRUE              tonnes of CO2 per per hour per MW
#>  2 175        Giordano, Giordano e Giordano e figli 18500033XH6RG332SX89 power  hydrocap            MW               2021    119274.          NA     MY             TRUE              tonnes of CO2 per per hour per MW
#>  3 175        Giordano, Giordano e Giordano e figli 18500033XH6RG332SX89 power  hydrocap            MW               2022    117515.          NA     MY             TRUE              tonnes of CO2 per per hour per MW
#>  4 175        Giordano, Giordano e Giordano e figli 18500033XH6RG332SX89 power  hydrocap            MW               2023    115757.          NA     MY             TRUE              tonnes of CO2 per per hour per MW
#>  5 175        Giordano, Giordano e Giordano e figli 18500033XH6RG332SX89 power  hydrocap            MW               2024    113999.          NA     MY             TRUE              tonnes of CO2 per per hour per MW
#>  6 175        Giordano, Giordano e Giordano e figli 18500033XH6RG332SX89 power  hydrocap            MW               2025    112240.          NA     MY             TRUE              tonnes of CO2 per per hour per MW
#>  7 526        Vitali, Vitali e Vitali s.r.l.        887100CAVZ6Y3KYT3Q90 cement integrated facility tonnes per year  2020   6327858.           0.723 CI             TRUE              tonnes of CO2 per tonne of cement
#>  8 526        Vitali, Vitali e Vitali s.r.l.        887100CAVZ6Y3KYT3Q90 cement integrated facility tonnes per year  2021   6569983.           0.735 CI             TRUE              tonnes of CO2 per tonne of cement
#>  9 526        Vitali, Vitali e Vitali s.r.l.        887100CAVZ6Y3KYT3Q90 cement integrated facility tonnes per year  2022   6812108.           0.746 CI             TRUE              tonnes of CO2 per tonne of cement
#> 10 526        Vitali, Vitali e Vitali s.r.l.        887100CAVZ6Y3KYT3Q90 cement integrated facility tonnes per year  2023   7054232.           0.758 CI             TRUE              tonnes of CO2 per tonne of cement
#> # ℹ 4,962 more rows
```
