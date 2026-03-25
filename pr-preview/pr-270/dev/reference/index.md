# Package index

## Utility functions

- [`pacta_loanbook_conflicts()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_conflicts.md)
  :

  Conflicts between the
  [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/) and
  other packages

- [`pacta_loanbook_deps()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_deps.md)
  :

  List all [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
  dependencies

- [`pacta_loanbook_logo()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_logo.md)
  :

  The [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
  logo, using ASCII or Unicode characters

- [`pacta_loanbook_packages()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_packages.md)
  :

  List all packages in
  [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)

- [`pacta_loanbook_sitrep()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_sitrep.md)
  :

  Get a situation report on
  [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)

- [`pacta_loanbook_update()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_update.md)
  :

  Update [pacta.loanbook](https://rmi-pacta.github.io/pacta.loanbook/)
  packages

## Matching functions

- [`crucial_lbk()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/crucial_lbk.md)
  :

  Crucial `loanbook` columns for
  [`match_name()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/match_name.md)

- [`match_name()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/match_name.md)
  :

  Match a loanbook to asset-based company data (abcd) by the `name_*`
  columns

- [`prioritize()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prioritize.md)
  :

  Pick rows where `score` is 1 and `level` per loan is of highest
  `priority`

- [`prioritize_level()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prioritize_level.md)
  :

  Arrange unique `level` values in default order of `priority`

## Analysis functions

- [`target_market_share()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/target_market_share.md)
  : Add targets for production, using the market share approach

- [`target_sda()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/target_sda.md)
  :

  Add targets for CO₂ emissions per unit production at the portfolio
  level, using the SDA approach

## Plotting functions

### Preparing data

- [`prep_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_emission_intensity.md)
  : Prepare data for a emission intensity plot
- [`prep_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_techmix.md)
  : Prepare data for plotting technology mix
- [`prep_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/prep_trajectory.md)
  : Prepare data for a trajectory plot

### Quick plots

- [`qplot_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/qplot_emission_intensity.md)
  : Create a quick emission intensity plot
- [`qplot_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/qplot_techmix.md)
  : Create a quick techmix plot
- [`qplot_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/qplot_trajectory.md)
  : Create a quick trajectory plot

### Plots

- [`plot_emission_intensity()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_emission_intensity.md)
  : Create an emission intensity plot
- [`plot_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_techmix.md)
  : Create a techmix plot
- [`plot_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/plot_trajectory.md)
  : Create a trajectory plot

### Styling functions

- [`theme_2dii()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/theme_2dii.md)
  : Complete theme
- [`scale_colour_r2dii()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scale_colour_r2dii.md)
  : Custom PACTA colour and fill scales
- [`scale_colour_r2dii_sector()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scale_colour_r2dii_sector.md)
  : Custom PACTA sector colour and fill scales
- [`scale_colour_r2dii_tech()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scale_colour_r2dii_tech.md)
  : Custom PACTA technology colour and fill scales
- [`scale_fill_r2dii()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scale_fill_r2dii.md)
  : Custom PACTA colour and fill scales
- [`scale_fill_r2dii_sector()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scale_fill_r2dii_sector.md)
  : Custom PACTA sector colour and fill scales
- [`scale_fill_r2dii_tech()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scale_fill_r2dii_tech.md)
  : Custom PACTA technology colour and fill scales

### Convert labels

- [`recode_metric_techmix()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/recode_metric_techmix.md)
  :

  Replicate labels produced with `qplot_*()` functions

- [`recode_metric_trajectory()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/recode_metric_trajectory.md)
  :

  Replicate labels produced with `qplot_*()` functions

- [`spell_out_technology()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/spell_out_technology.md)
  :

  Replicate labels produced with `qplot_*()` functions

- [`to_title()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/to_title.md)
  :

  Replicate labels produced with `qplot_*()` functions

## Datasets

- [`gics_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/gics_classification.md)
  : Dataset to bridge (translate) common sector-classification codes
- [`increasing_or_decreasing`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/increasing_or_decreasing.md)
  : Determine if a technology is increasing or decreasing
- [`isic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/isic_classification.md)
  : Dataset to bridge (translate) common sector-classification codes
- [`iso_codes`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/iso_codes.md)
  : Countries and codes
- [`nace_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/nace_classification.md)
  : Dataset to bridge (translate) common sector-classification codes
- [`naics_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/naics_classification.md)
  : Dataset to bridge (translate) common sector-classification codes
- [`palette_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/palette_colours.md)
  : Colour datasets
- [`psic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/psic_classification.md)
  : Dataset to bridge (translate) common sector-classification codes
- [`region_isos`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/region_isos.md)
  : A dataset outlining various region definitions
- [`scenario_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scenario_colours.md)
  : Colour datasets
- [`sector_classifications`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sector_classifications.md)
  : A view of available sector classification datasets
- [`sector_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sector_colours.md)
  : Colour datasets
- [`sic_classification`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sic_classification.md)
  : Dataset to bridge (translate) common sector-classification codes
- [`technology_colours`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/technology_colours.md)
  : Colour datasets

## Demo data

- [`abcd_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/abcd_demo.md)
  : An asset-based company dataset for demonstration

- [`co2_intensity_scenario_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/co2_intensity_scenario_demo.md)
  :

  A prepared CO₂ intensity climate scenario dataset for demonstration

- [`loanbook_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/loanbook_demo.md)
  : A loanbook dataset for demonstration

- [`market_share_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/market_share_demo.md)
  :

  An example of a `market_share_demo`-like dataset

- [`overwrite_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/overwrite_demo.md)
  : A demonstration dataset used to overwrite specific entity names or
  sectors

- [`region_isos_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/region_isos_demo.md)
  : A dataset outlining various region definitions

- [`scenario_demo_2020`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/scenario_demo_2020.md)
  : A prepared climate scenario dataset for demonstration

- [`sda_demo`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/sda_demo.md)
  :

  An example of an `sda_demo`-like dataset

## Data dictionary

- [`data_dictionary`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/data_dictionary.md)
  : Data Dictionary
