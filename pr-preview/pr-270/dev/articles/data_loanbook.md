# Loanbook

## Loanbook dataset

Loanbook dataset, prepared by the user as the raw input for the PACTA
for Banks software.

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
package provides an example loanbook dataset `loanbook_demo`.

``` r
loanbook_demo
#> # A tibble: 283 × 13
#>    id_loan id_direct_loantaker name_direct_loantaker       id_ultimate_parent name_ultimate_parent                   loan_size_outstanding loan_size_outstanding_currency loan_size_credit_limit loan_size_credit_limit_currency sector_classification_system sector_classification_direct_loantaker lei_direct_loantaker isin_direct_loantaker
#>    <chr>   <chr>               <chr>                       <chr>              <chr>                                                  <dbl> <chr>                                           <dbl> <chr>                           <chr>                        <chr>                                  <chr>                <chr>                
#>  1 L1      C294                Vitale Group                UP15               Scholz KGaA                                           225625 EUR                                          18968805 EUR                             NACE                         D35.11                                 NA                   NA                   
#>  2 L2      C293                Moen-Moen                   UP84               NA                                                    301721 EUR                                          19727961 EUR                             NACE                         D35.11                                 NA                   NA                   
#>  3 L3      C292                Rowe-Rowe                   UP288              Harvey, Harvey and Harvey                             410297 EUR                                          20811147 EUR                             NACE                         D35.11                                 801600ATB1D513IUFZ77 NA                   
#>  4 L4      C299                Fadel-Fadel                 UP54               NA                                                    233049 EUR                                          19042869 EUR                             NACE                         D35.11                                 NA                   NA                   
#>  5 L5      C305                Ring AG & Co. KGaA          UP104              Conti, Conti e Conti SPA                              406585 EUR                                          20774115 EUR                             NACE                         D35.11                                 NA                   NA                   
#>  6 L6      C304                Kassulke-Kassulke           UP83               Farrell, Farrell and Farrell                          185721 EUR                                          18570711 EUR                             NACE                         D35.11                                 108200TUBGG1DR0QR635 NA                   
#>  7 L7      C227                Morissette Group            UP134              Weller AG                                             184793 EUR                                          18561453 EUR                             NACE                         D35.11                                 NA                   NA                   
#>  8 L8      C303                Barone s.r.l.               UP163              Williamsonn PLC                                       291513 EUR                                          19626123 EUR                             NACE                         D35.11                                 NA                   NA                   
#>  9 L9      C301                Werner Werner AG & Co. KGaA UP138              Leone-Leone s.r.l.                                    407513 EUR                                          20783373 EUR                             NACE                         D35.11                                 NA                   NA                   
#> 10 L10     C302                De rosa s.r.l.              UP32               Benedetti, Benedetti e Benedetti Group                186649 EUR                                          18579969 EUR                             NACE                         D35.11                                 NA                   NA                   
#> # ℹ 273 more rows
```
