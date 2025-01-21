test_that("pacta_loanbook_packages returns character vector of package names", {
  out <- pacta_loanbook_packages()
  expect_type(out, "character")
  expect_true("r2dii.analysis" %in% out)
})
