# Preparatory Steps

## Preparatory Steps

This section outlines the preparations that are necessary before running
the PACTA for Banks analysis, including sourcing the required input data
sets and software. If you plan to use the same source data to assess
multiple loan books, these steps only need to be done once, except for
the creation of individual raw loan book files for each of the loan
books you want to analyze.

### Required Input Data Sets

The PACTA for Banks analysis requires several input data sets, some from
external sources and others prepared by the user. Certain data sets are
optional.

The key required inputs include (described in more detail below):

- [Asset-Based Company Data (ABCD)](#asset-based-company-data-abcd)
- [Scenario Data](#scenario-data)
- [Loan Book](#loan-book)
- [Misclassified Loans (optional)](#misclassified-loans-optional)
- [Manual Sector Classification
  (optional)](#manual-sector-classification-optional)

#### Asset-Based Company Data (ABCD)

- Required input
- External source
- XLSX file

This dataset contains production profiles and emission intensities for
companies in climate critical economic sectors: automotive (light-duty
vehicles), aviation, cement, coal mining, upstream oil & gas, power
generation, and steel. Typically sourced from third-party providers, it
can also be self-prepared or supplemented with additional entries.

The ABCD dataset must be a `.xlsx` file that contains the following
columns:

- `company_id`: \<character\>
- `name_company`: \<character\>
- `lei`: \<character\>
- `sector`: \<character\>
- `technology`: \<character\>
- `production_unit`: \<character\>
- `year`: \<integer\>
- `production`: \<numeric\>
- `emission_factor`: \<numeric\>
- `plant_location`: \<character\>
- `is_ultimate_owner`: \<logical\>
- `emission_factor_unit`: \<character\>

PACTA is data-agnostic and supports any provider offering data in the
correct format. One option is purchasing ABCD from [Asset
Impact](https://asset-impact.gresb.com/).

For details on the required structure of this dataset, refer to the
[ABCD data
dictionary](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/data_abcd.md).

#### Scenario Data

- Required input(s)
- External source
- CSV file(s)

##### Sectors with Technology-Level Pathways

For sectors with technology-level trajectories, the dataset provides
Sectoral Market Share Percentage (SMSP) and Target Market Share Ratio
(TMSR) pathways using the “market share approach”. This allocation rule
assumes that all companies in a sector must adjust production while
maintaining constant market shares within a sector to align with the
overall climate transition scenario.

A more detailed explanation of the market share approach can be found
[here](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_metrics.html#market-share-approach).

The Target Market Share Scenario dataset must be a CSV file and include
the following columns:

- `scenario`: \<character\>
- `sector`: \<character\>
- `technology`: \<character\>
- `region`: \<character\>
- `year`: \<integer\>
- `tmsr`: \<numeric\>
- `smsp`: \<numeric\>
- `scenario_source`: \<character\>

For details on the required structure of this dataset, refer to the
[market share scenario data
dictionary](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/data_scenario.html#climate-transition-scenario-dataset-technology-pathways-for-target-market-share-calculation).

##### Sectors with Sector-Level Pathways

For sectors without technology-level pathways, PACTA applies the
Sectoral Decarbonization Approach (SDA). This method requires all
companies in a sector to align their physical emission intensity with a
future scenario target (e.g., by 2050). Higher-emission companies must
reduce their intensity more drastically than those already using cleaner
technologies. However, SDA does not directly affect production volumes.

A more detailed explanation of the sectoral decarbonization approach can
be found
[here](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_metrics.html#sectoral-decarbonization-approach)

The SDA scenario dataset must be a `.csv` file that contains the
following columns:

- `scenario_source`: \<character\>
- `scenario`: \<character\>
- `sector`: \<character\>
- `region`: \<character\>
- `year`: \<numeric\>
- `emission_factor_unit`: \<character\>
- `emission_factor`: \<numeric\>

For details on the required structure of this dataset, refer to the [SDA
scenario data
dictionary](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/data_scenario.html#climate-transition-scenario-dataset-co2-intensity-pathways-for-sectoral-decarbonization-approach).

##### Scenario Data Sources

While the raw input values of the scenarios are based on models from
external third party organisations - such as the [World Energy
Outlook](https://www.iea.org/reports/world-energy-outlook-2024) by the
[International Energy Agency (IEA)](https://www.iea.org/), the [Global
Energy and Climate Outlook by the Joint Research Center of the European
Commission
(JRC)](https://joint-research-centre.ec.europa.eu/scientific-activities-z/geco_en),
or the [One Earth Climate Model by the Institute for Sustainable Futures
(ISF)](https://www.uts.edu.au/oecm) - the input data set for PACTA must
be prepared using additional steps, which are documented publicly on the
following GitHub repositories:

- [pacta.scenario.data.preparation](https://github.com/RMI-PACTA/pacta.scenario.data.preparation)
- [workflow.scenario.preparation](https://github.com/RMI-PACTA/workflow.scenario.preparation)

**Downloads:** Prepared scenario files are available for download as
CSVs in the [Methodology and Supporting
Documents](https://pacta.rmi.org/pacta-for-banks-2020/methodology-and-supporting-materials/)
section of the PACTA website, both technology-level production pathways
and sector-level emission intensity pathways. These files are typically
updated annually based on the latest scenario publications. As a general
rule, the publication year defines the initial year of the dataset,
which is also commonly used as the analysis start year.

#### Loan Book

- Required input
- User-prepared
- CSV file

The loan book is the financial dataset to be analyzed, detailing the
loans provided to companies. Banks can source this data from their
internal systems.

The raw loan book must be prepared as CSV files and include, at a
minimum, the following columns:

- `id_loan`: \<character\>
- `id_direct_loantaker`: \<character\>
- `name_direct_loantaker`: \<character\>
- `id_ultimate_parent`: \<character\>
- `name_ultimate_parent`: \<character\>
- `loan_size_outstanding`: \<numeric\>
- `loan_size_outstanding_currency`: \<character\>
- `loan_size_credit_limit`: \<numeric\>
- `loan_size_credit_limit_currency`: \<character\>
- `sector_classification_system`: \<character\>
- `sector_classification_direct_loantaker`: \<character\>
- `lei_direct_loantaker`: \<character\>
- `isin_direct_loantaker`: \<character\>

For details on the required structure of this dataset, refer to the
[loanbook data
dictionary](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/data_loanbook.md).

For detailed descriptions of how to prepare raw loan books, see the
[“Training Materials” section of the PACTA for Banks
documentation](https://pacta.rmi.org/pacta-for-banks-2020/training-materials/).
The [“User Guide
2”](https://pacta.rmi.org/wp-content/uploads/2020/10/User-Guide-2..pdf),
the [“Data
Dictionary”](https://pacta.rmi.org/wp-content/uploads/2020/09/data_dictionary.xlsx),
and the [“Loan Book
Template”](https://pacta.rmi.org/wp-content/uploads/2020/09/loanbook_demo.xlsx)
files can all be helpful in preparing your data.

**NOTE:** When preparing the raw loan book data, you will need to fill
in the columns `sector_classification_system` and
`sector_classification_direct_loantaker`. If you are planning to use one
of the sector classification systems that are built into the
[pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/) package
(GICS, ISIC, NACE, NAICS, PSIC, SIC), you will need to make sure that
you obtain the sector codes based on the correct version or revision of
the sector classification system you are using. Here you can find an
overview of the sector classification systems currently featured and the
version or revision they are based on:

Sector Classification Systems

Built-in classification systems and their versions or revisions

If you cannot obtain sector classification codes for the version of the
sector classification system you are using as described in the table
above, you will have to to treat the sector classification system like a
[manual sector classification](#manual-sector-classification-optional).

#### Misclassified Loans (optional)

- Optional input
- User-prepared
- CSV file

The misclassified loans CSV file should contain a single column,
`id_loan`, and be structured as follows:

- `id_loan`: \<character\>

Users can provide a list of loans that were misclassified in the raw
loan book. The goal is to remove false positives—loans incorrectly
classified within a PACTA sector despite manual research confirming the
company does not operate in that sector. Misclassification may result
from data entry errors, for example. Excluding these loans from sector
calculations can help improve the accuracy of the match success rate
assessment.

#### Manual Sector Classification (optional)

- optional input
- self-prepared
- CSV file

The manual sector classification dataset must be prepared as a CSV file
and contain the following columns:

- `sector`: \<character\>
- `borderline`: \<logical\>
- `code`: \<character\>
- `code_system`: \<character\>

In case the user cannot obtain sector classification codes of any of the
classification systems featured in
[`sector_classifications`](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/data_classification.html#sector-classifications-dataset)
(currently the following classification systems are featured: GICS,
ISIC, NACE, NAICS, PSIC, SIC), the user can provide a manually created
sector classification file for matching the loan book to the ABCD
instead. Generally, any such manually prepared sector classification
file must follow the format of
[`sector_classifications`](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/data_classification.html#sector-classifications-dataset).
It is recommended to use the built in sector classifications if
possible, as mapping your own sector classification to the PACTA sectors
can be complex and time consuming.

### Required Software

Using the [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
package for the PACTA for Banks analysis requires the following software
to be installed on your system:

#### R (version 4.1.0 or higher)

R is the programming language that the
[pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/) package is
written in. You can download R from the [Comprehensive R Archive Network
(CRAN)](https://cran.r-project.org/).

#### RStudio (optional)

RStudio is an integrated development environment (IDE) for R developed
by Posit. It is not strictly required to run the analysis, but it can be
helpful for managing your project and running the analysis. Generally,
RStudio is very widely used among the R community and probably the
easiest way to interact with most R tools, such as the
[pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/) suite of
packages. RStudio Desktop is an open source tool and free of charge. You
can download RStudio from the [Posit RStudio
website](https://posit.co/downloads/).

#### `{pacta.loanbook}` package

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/) R
package is the main software tool that you will use to run the PACTA for
Banks analysis.

You can install the
[pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/) R package
from any CRAN mirror by running the following command in R:

``` r
install.packages("pacta.loanbook")
```

Alternatively, you can install the development versions of the
[pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/) R package
from GitHub with:

``` r
# install.packages("pak")
pak::pak("RMI-PACTA/pacta.loanbook")
```

We use the [`pak` package](https://pak.r-lib.org/index.html) as a simple
[tool to install packages from
GitHub](https://pak.r-lib.org/reference/pak.html).

##### Connecting to GitHub from RStudio

Note that if you choose to install the
[pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/) R package
from GitHub, you will need to have:

1.  registered a [GitHub](https://github.com/) account,
2.  `git` installed locally,
3.  set up credentials so that RStudio can communicate with GitHub.

You can find more information on how to do this using the following
resources:

- [Happy Git and GitHub for the useR](https://happygitwithr.com/) is a
  great and comprehensive resource that takes you through the process of
  setting up git and GitHub with RStudio, including registering a GitHub
  account, installing git, and connecting RStudio to GitHub.
- Additional information on managing your GitHub connection from within
  RStudio can be found in the usethis package documentation, for example
  on [managing git
  credentials](https://usethis.r-lib.org/articles/git-credentials.html).

If you only plan to use GitHub to install this package or other packages
as shown above, you will not have to have a deep understanding of all
the git commands, so there is no need to be overwhelmed by the
complexity of git.

#### Required R packages

The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/) R
package depends on a number of other R packages. These dependencies will
be installed automatically when you install the
[pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/) R package.
The required packages are:

[cli](https://cli.r-lib.org), [data.table](https://r-datatable.com),
[dplyr](https://dplyr.tidyverse.org),
[ggplot2](https://ggplot2.tidyverse.org),
[ggrepel](https://ggrepel.slowkow.com/),
[glue](https://glue.tidyverse.org/),
[lifecycle](https://lifecycle.r-lib.org/),
[magrittr](https://magrittr.tidyverse.org),
[purrr](https://purrr.tidyverse.org/),
[r2dii.analysis](https://rmi-pacta.github.io/r2dii.analysis/),
[r2dii.data](https://rmi-pacta.github.io/r2dii.data/),
[r2dii.match](https://rmi-pacta.github.io/r2dii.match/),
[r2dii.plot](https://rmi-pacta.github.io/r2dii.plot/),
[rlang](https://rlang.r-lib.org),
[rstudioapi](https://rstudio.github.io/rstudioapi/),
[scales](https://scales.r-lib.org),
[stringdist](https://github.com/markvanderloo/stringdist),
[stringi](https://stringi.gagolewski.com/),
[stringr](https://stringr.tidyverse.org),
[tibble](https://tibble.tidyverse.org/),
[tidyr](https://tidyr.tidyverse.org),
[tidyselect](https://tidyselect.r-lib.org),
[zoo](https://zoo.R-Forge.R-project.org/)

#### FAQ

##### How do I install the `{pacta.loanbook}` R package?

The most common ways to install R packages are via CRAN or
[GitHub](#connecting-to-github-from-rstudio). Public institutions often
have restrictions on the installation of packages from GitHub, so you
may need to install the package from CRAN. In some cases, your
institution may mirror CRAN in their internal application registry, so
you may need to install the package from there. Should you have any
issues with the installation from the internal application registry, it
is best to reach out to your IT department. If you cannot obtain the
package in any of these ways, please reach out to the package
maintainers directly for exploring other options.

##### How do I install the required R packages?

In principle, all dependencies required to run the
[pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/) R package
will be installed automatically when you install the package. However,
if you encounter any issues with the installation of the required
packages, you can install them manually by running the following command
in R, where `...` should be replaced with the package names from the
list above, separated by commas:

``` r
install.packages(c(...))
```

### Checklist of Preparatory Steps

Before running the PACTA for Banks analysis, you should make sure that
you have completed the following preparatory steps:

Obtained the required external input data sets:

Asset-based Company Data (ABCD)

Scenario Data

Prepared the required input data sets:

Raw Loan Book

OPTIONAL - Prepared the optional input data sets:

Misclassified Loans

Manual Sector Classification

Installed the required software:

R (version 4.1.0 or higher)

RStudio (optional)

[pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/) R package

[set up git and GitHub](#connecting-to-github-from-rstudio) (optional)

------------------------------------------------------------------------

**PREVIOUS CHAPTER:**
[Overview](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_overview.md)

**NEXT CHAPTER:** [Running the
Analysis](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_running_the_analysis.md)
