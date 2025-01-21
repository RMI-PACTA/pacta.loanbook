test_that("useful conflicts message", {
  expect_snapshot({
    pacta_loanbook_conflicts(c("base", "stats"))
  })
})
