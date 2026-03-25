# The `{pacta.loanbook}` logo, using ASCII or Unicode characters

Use
[`cli::ansi_strip()`](https://cli.r-lib.org/reference/ansi_strip.html)
to get rid of the colors.

## Usage

``` r
pacta_loanbook_logo(unicode = cli::is_utf8_output())
```

## Arguments

- unicode:

  Whether to use Unicode symbols. Default is `TRUE` on UTF-8 platforms.

## Value

a `pacta_loanbook_logo` classed `cli_ansi_string` which will print the
PACTA logo in the console in interactive sessions.

## See also

Other utility functions:
[`pacta_loanbook_conflicts()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_conflicts.md),
[`pacta_loanbook_deps()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_deps.md),
[`pacta_loanbook_packages()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_packages.md),
[`pacta_loanbook_sitrep()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_sitrep.md),
[`pacta_loanbook_update()`](https://rmi-pacta.github.io/pacta.loanbook/dev/reference/pacta_loanbook_update.md)

## Examples

``` r
pacta_loanbook_logo()
#>  ____    ______  ____    ______  ______     
#> /\  _`\ /\  _  \/\  _`\ /\__  _\/\  _  \    
#> \ \ \L\ \ \ \L\ \ \ \/\_\/_/\ \/\ \ \L\ \   
#>  \ \ ,__/\ \  __ \ \ \/_/_ \ \ \ \ \  __ \  
#>   \ \ \/  \ \ \/\ \ \ \L\ \ \ \ \ \ \ \/\ \ 
#>    \ \_\   \ \_\ \_\ \____/  \ \_\ \ \_\ \_\
#>     \/_/    \/_/\/_/\/___/    \/_/  \/_/\/_/
#> 
```
