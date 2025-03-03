test_that("highlights dev versions in red", {
  local_reproducible_output(crayon = TRUE)

  expect_snapshot({
    highlight_version(c("1.0.0", "1.0.0.9000", "0.9000.0.9000", "1.0.0-rc"))
  })
})
