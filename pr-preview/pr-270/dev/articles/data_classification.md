# Sector Classification

## sector classifications dataset

This dataset contains all currently supported translation keys between
the sector classification systems and sector scopes used in the ‘PACTA’
software.

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
package provides a sector classification dataset
`sector_classifications` that contains a sector mapping for all
supported sector classification systems (currently: GICS, ISIC, NACE,
NAICS, PSIC, SIC).

``` r
sector_classifications
#> # A tibble: 6,559 × 4
#>    sector       borderline code     code_system
#>    <chr>        <lgl>      <chr>    <chr>      
#>  1 not in scope FALSE      10       GICS       
#>  2 not in scope FALSE      1010     GICS       
#>  3 not in scope FALSE      101010   GICS       
#>  4 not in scope FALSE      10101010 GICS       
#>  5 not in scope FALSE      10101020 GICS       
#>  6 oil and gas  FALSE      101020   GICS       
#>  7 oil and gas  FALSE      10102010 GICS       
#>  8 oil and gas  FALSE      10102020 GICS       
#>  9 oil and gas  TRUE       10102030 GICS       
#> 10 oil and gas  TRUE       10102040 GICS       
#> # ℹ 6,549 more rows
```

## GICS classification dataset

This dataset serves as a translation key between the GICS
sector-classification system and sector scopes used in the ‘PACTA’
software.

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
package provides a GICS classification dataset `gics_classification`.

``` r
gics_classification
#> # A tibble: 282 × 5
#>    description                                                                                                                                                                                                                                  code     sector       borderline version
#>    <chr>                                                                                                                                                                                                                                        <chr>    <chr>        <lgl>      <chr>  
#>  1 Energy                                                                                                                                                                                                                                       10       not in scope FALSE      2023   
#>  2 Energy                                                                                                                                                                                                                                       1010     not in scope FALSE      2023   
#>  3 Energy Equipment & Services                                                                                                                                                                                                                  101010   not in scope FALSE      2023   
#>  4 Drilling contractors or owners of drilling rigs that contract their services for drilling wells.                                                                                                                                             10101010 not in scope FALSE      2023   
#>  5 Manufacturers of equipment, including drilling rigs and equipment, and providers of supplies and services to companies involved in the drilling, evaluation and completion of oil and gas wells.                                             10101020 not in scope FALSE      2023   
#>  6 Oil, Gas & Consumable Fuels                                                                                                                                                                                                                  101020   oil and gas  FALSE      2023   
#>  7 Integrated oil companies engaged in the exploration & production of oil and gas, as well as at least one other significant activity in either refining, marketing and transportation, or chemicals.                                          10102010 oil and gas  FALSE      2023   
#>  8 Companies engaged in the exploration and production of oil and gas not classified elsewhere.                                                                                                                                                 10102020 oil and gas  FALSE      2023   
#>  9 Companies engaged in the refining and marketing of oil, gas and/or refined products not classified in the Integrated Oil & Gas or Independent Power Producers & Energy Traders Sub-Industries.                                               10102030 oil and gas  TRUE       2023   
#> 10 Companies engaged in the storage and/or transportation of oil, gas and/or refined products. Includes diversified midstream natural gas companies, oil and refined product pipelines, coal slurry pipelines and oil & gas shipping companies. 10102040 oil and gas  TRUE       2023   
#> # ℹ 272 more rows
```

## ISIC Rev 5 classification dataset

This dataset serves as a translation key between the ISIC Rev 5
sector-classification system and sector scopes used in the ‘PACTA’
software.

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
package provides a ISIC Rev 5 classification dataset
`isic_classification`.

``` r
isic_classification
#> # A tibble: 830 × 6
#>    original_code description                                                        code  sector       borderline revision
#>    <chr>         <chr>                                                              <chr> <chr>        <lgl>      <chr>   
#>  1 A             Agriculture, forestry and fishing                                  A     not in scope FALSE      5       
#>  2 01            Crop and animal production, hunting and related service activities A01   not in scope FALSE      5       
#>  3 011           Growing of non-perennial crops                                     A011  not in scope FALSE      5       
#>  4 0111          Growing of cereals (except rice), leguminous crops and oil seeds   A0111 not in scope FALSE      5       
#>  5 0112          Growing of rice                                                    A0112 not in scope FALSE      5       
#>  6 0113          Growing of vegetables and melons, roots and tubers                 A0113 not in scope FALSE      5       
#>  7 0114          Growing of sugar cane                                              A0114 not in scope FALSE      5       
#>  8 0115          Growing of tobacco                                                 A0115 not in scope FALSE      5       
#>  9 0116          Growing of fibre crops                                             A0116 not in scope FALSE      5       
#> 10 0119          Growing of other non-perennial crops                               A0119 not in scope FALSE      5       
#> # ℹ 820 more rows
```

## NACE version 2.1 classification dataset

This dataset serves as a translation key between the NACE version 2.1
sector-classification system and sector scopes used in the ‘PACTA’
software.

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
package provides a NACE version 2.1 classification dataset
`nace_classification`.

``` r
nace_classification
#> # A tibble: 1,047 × 6
#>    original_code description                                                               code   sector       borderline version
#>    <chr>         <chr>                                                                     <chr>  <chr>        <lgl>      <chr>  
#>  1 01            01 Crop and animal production, hunting and related service activities     A01    not in scope FALSE      2.1    
#>  2 01.1          01.1 Growing of non-perennial crops                                       A01.1  not in scope FALSE      2.1    
#>  3 01.11         01.11 Growing of cereals, other than rice, leguminous crops and oil seeds A01.11 not in scope FALSE      2.1    
#>  4 01.12         01.12 Growing of rice                                                     A01.12 not in scope FALSE      2.1    
#>  5 01.13         01.13 Growing of vegetables and melons, roots and tubers                  A01.13 not in scope FALSE      2.1    
#>  6 01.14         01.14 Growing of sugar cane                                               A01.14 not in scope FALSE      2.1    
#>  7 01.15         01.15 Growing of tobacco                                                  A01.15 not in scope FALSE      2.1    
#>  8 01.16         01.16 Growing of fibre crops                                              A01.16 not in scope FALSE      2.1    
#>  9 01.19         01.19 Growing of other non-perennial crops                                A01.19 not in scope FALSE      2.1    
#> 10 01.2          01.2 Growing of perennial crops                                           A01.2  not in scope FALSE      2.1    
#> # ℹ 1,037 more rows
```

## NAICS (North American Industry Classification System) classification dataset

This dataset serves as a translation key between the NAICS
sector-classification system and sector scopes used in the ‘PACTA’
software.

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
package provides a NAICS classification dataset `naics_classification`.

``` r
naics_classification
#> # A tibble: 2,125 × 5
#>    description                                code   sector       borderline version
#>    <chr>                                      <chr>  <chr>        <lgl>      <chr>  
#>  1 Agriculture, Forestry, Fishing and Hunting 11     not in scope FALSE      2022   
#>  2 Crop Production                            111    not in scope FALSE      2022   
#>  3 Oilseed and Grain Farming                  1111   not in scope FALSE      2022   
#>  4 Soybean Farming                            11111  not in scope FALSE      2022   
#>  5 Soybean Farming                            111110 not in scope FALSE      2022   
#>  6 Oilseed (except Soybean) Farming           11112  not in scope FALSE      2022   
#>  7 Oilseed (except Soybean) Farming           111120 not in scope FALSE      2022   
#>  8 Dry Pea and Bean Farming                   11113  not in scope FALSE      2022   
#>  9 Dry Pea and Bean Farming                   111130 not in scope FALSE      2022   
#> 10 Wheat Farming                              11114  not in scope FALSE      2022   
#> # ℹ 2,115 more rows
```

## PSIC classification dataset

This dataset serves as a translation key between the PSIC
sector-classification system and sector scopes used in the ‘PACTA’
software.

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
package provides a PSIC classification dataset `psic_classification`.

``` r
psic_classification
#> # A tibble: 1,271 × 5
#>    description                                                                                                                                       code  sector       borderline version
#>    <chr>                                                                                                                                             <chr> <chr>        <lgl>      <chr>  
#>  1 Growing of leguminous crops such as: mongo, string beans (sitao), pigeon peas, gisantes, garbanzos, bountiful beans (habichuelas), peas (sitsaro) 1111  not in scope FALSE      2019   
#>  2 Growing of ground nuts                                                                                                                            1112  not in scope FALSE      2019   
#>  3 Growing of oil seeds (except ground nuts) such as soya beans, sunflower and growing of other oil seeds,  n.e.c.                                   1113  not in scope FALSE      2019   
#>  4 Growing of  sorghum, wheat                                                                                                                        1114  not in scope FALSE      2019   
#>  5 Growing of other cereals (except rice and corn), leguminous crops and oil seeds, n.e.c.                                                           1119  not in scope FALSE      2019   
#>  6 Growing of paddy rice, lowland, irrigated                                                                                                         1121  not in scope FALSE      2019   
#>  7 Growing of paddy rice, lowland, rainfed                                                                                                           1122  not in scope FALSE      2019   
#>  8 Growing of paddy rice, upland/kaingin                                                                                                             1123  not in scope FALSE      2019   
#>  9 Growing of corn, expcept young corn (vegetable)                                                                                                   1130  not in scope FALSE      2019   
#> 10 Growing of sugarcane including muscovado sugar-making in the farm                                                                                 1140  not in scope FALSE      2019   
#> # ℹ 1,261 more rows
```

## SIC classification dataset

This dataset serves as a translation key between the SIC
sector-classification system and sector scopes used in the ‘PACTA’
software.

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
package provides a SIC classification dataset `sic_classification`.

``` r
sic_classification
#> # A tibble: 1,005 × 5
#>    description                                               code  sector       borderline version
#>    <chr>                                                     <chr> <chr>        <lgl>      <chr>  
#>  1 Wheat                                                     0111  not in scope FALSE      1987   
#>  2 Rice                                                      0112  not in scope FALSE      1987   
#>  3 Corn                                                      0115  not in scope FALSE      1987   
#>  4 Soybeans                                                  0116  not in scope FALSE      1987   
#>  5 Cash Grains, Not Elsewhere Classified                     0119  not in scope FALSE      1987   
#>  6 Cotton                                                    0131  not in scope FALSE      1987   
#>  7 Tobacco                                                   0132  not in scope FALSE      1987   
#>  8 Sugarcane and Sugar Beets                                 0133  not in scope FALSE      1987   
#>  9 Irish Potatoes                                            0134  not in scope FALSE      1987   
#> 10 Field Crops, Except Cash Grains, Not Elsewhere Classified 0139  not in scope FALSE      1987   
#> # ℹ 995 more rows
```
