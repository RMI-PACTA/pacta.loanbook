
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pacta.loanbook <a href='https://rmi-pacta.github.io/pacta.loanbook/'><img src='man/figures/logo.png' align="right" height="31"/></a>

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/RMI-PACTA/pacta.loanbook/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/RMI-PACTA/pacta.loanbook/actions/workflows/R-CMD-check.yaml)
[![codecov](https://codecov.io/gh/RMI-PACTA/pacta.loanbook/graph/badge.svg)](https://app.codecov.io/gh/RMI-PACTA/pacta.loanbook)
[![pacta.loanbook status
badge](https://rmi-pacta.r-universe.dev/badges/pacta.loanbook)](https://rmi-pacta.r-universe.dev/pacta.loanbook)
[![CRAN
status](https://www.r-pkg.org/badges/version/pacta.loanbook)](https://CRAN.R-project.org/package=pacta.loanbook)
<!-- badges: end -->

## Overview

`{pacta.loanbook}` supports the PACTA analysis of corporate lending
portfolios—loanbooks—by providing an easy way to install, load and run
the necessary underlying R packages.

In addition to simplifying package management, `{pacta.loanbook}` serves
as a central resource for documentation. The
[cookbook](https://rmi-pacta.github.io/pacta.loanbook/articles/cookbook_overview.html)
explains in detail how you can run a PACTA analysis.

If you’re new to climate scenario alignment and PACTA, see the [PACTA
website](https://pacta.rmi.org) for more information about PACTA for
Banks, more on PACTA methodology, and other PACTA applications.

## Installation

You can install the release version of the package by running the
following command in R:

``` r
install.packages("pacta.loanbook")
```

## Usage

`library(pacta.loanbook)` will load all the functions and datasets from
the underlying packages:

- [r2dii.data](https://rmi-pacta.github.io/r2dii.data/), for input data
  sets used in PACTA for Banks (e.g. sector classification systems,
  regional mappers, data dictionary, demo data).
- [r2dii.match](https://rmi-pacta.github.io/r2dii.match/), for matching
  counterparties in raw input loan books with companies in the
  asset-based company data (ABCD).
- [r2dii.analysis](https://rmi-pacta.github.io/r2dii.analysis/), for
  calculating the alignment of loan books and/or counterparties with
  climate transition scenarios.
- [r2dii.plot](https://rmi-pacta.github.io/r2dii.plot/), for plotting
  the results of the alignment analysis in standard PACTA plot format.

Refer to the
[cookbook](https://rmi-pacta.github.io/pacta.loanbook/articles/cookbook_overview.html)
for a detailed explanation on how to use the software.
