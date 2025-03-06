# based on https://ropensci.org/blog/2022/01/21/ropensci-news-digest-january-2022/#to-quote-or-not-to-quote-non-existing-words-in-description
#
# add words by running e.g.:
# saveRDS(c("PACTA", "pacta"), file = ".aspell/pacta.rds", version = 2)

Rd_files <- vignettes <- R_files <- description <-
  list(encoding = "UTF-8",
       language = "en",
       dictionaries = c("en_stats", "pacta"))
