# if no packages, shows nothing

    Code
      cat(pacta_loanbook_attach_message(character()))

# message lists all core pacta.loanbook packages

    Code
      cat(pacta_loanbook_attach_message(core))
    Output
      -- Attaching core pacta.loanbook packages -------------- pacta.loanbook 1.0.0 --
      v r2dii.analysis 1.0.0     v r2dii.match    1.0.0
      v r2dii.data     1.0.0     v r2dii.plot     1.0.0

# highlights dev versions in red

    Code
      highlight_version(c("1.0.0", "1.0.0.9000", "0.9000.0.9000", "1.0.0-rc"))
    Output
      [1] "1.0.0"                                        
      [2] "1.0.0.\033[31m9000\033[39m"                   
      [3] "0.\033[31m9000\033[39m.0.\033[31m9000\033[39m"
      [4] "1.0.0-rc"                                     

