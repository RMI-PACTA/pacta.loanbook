test_that("correctly identifies valid LEIs", {
  expect_true(is_valid_lei("11111111111111111104")) # manufactured valid
  expect_true(is_valid_lei("XXXXXXXXXXXXXXXXXX35")) # manufactured valid
  expect_true(is_valid_lei("xxxxxxxxxxxxxxxxxx35")) # manufactured valid with lowercase
  expect_true(is_valid_lei("54930084UKLVMY22DS16")) # known valid
  expect_true(is_valid_lei("213800WSGIIZCXF1P572")) # known valid
  expect_true(is_valid_lei("5493000IBP32UQZ0KL24")) # known valid
  expect_true(is_valid_lei("L3I9ZG2KFGXZ61BMYR72")) # known valid
  expect_true(is_valid_lei(" L3I9ZG2KFGXZ61BMYR72 ")) # with leading/trailing space
  expect_true(is_valid_lei("L3I9 ZG2KFGXZ61BMYR 72")) # with internal space
})

test_that("correctly identifies invalid LEIs", {
  expect_false(is_valid_lei("18500033")) # too short
  expect_false(is_valid_lei("?8500033XH6RG332SX89")) # non-alphanumeric character
  expect_false(is_valid_lei("XXXXXXXXXXXXXXXXXX00")) # manufactured invalid
})

test_that("validates multiple LEIs", {
  leis <- c(invalid_lei = "XXX", valid_lei = "XXXXXXXXXXXXXXXXXX35")
  expect_identical(is_valid_lei(leis), c(FALSE, TRUE))
  expect_identical(is_valid_lei(data.frame(leis)[1L]), c(FALSE, TRUE))
})

test_that("always outputs a logical vector", {
  # invalid and valid codes
  leis <- c(invalid_lei = "XXX", valid_lei = "XXXXXXXXXXXXXXXXXX35")
  expect_vector(is_valid_lei(leis[1L]), ptype = logical(), size = 1L)
  expect_vector(is_valid_lei(leis[2L]), ptype = logical(), size = 1L)
  expect_vector(is_valid_lei(leis), ptype = logical(), size = 2L)

  # expected possible uses
  leis_df <- data.frame(lei = leis)

  out <- dplyr::mutate(leis_df, valid_lei = is_valid_lei(lei))$valid_lei
  expect_vector(out, ptype = logical(), size = 2L)

  out <- is_valid_lei(leis_df$lei)
  expect_vector(out, ptype = logical(), size = 2L)

  out <- is_valid_lei(leis_df["lei"])
  expect_vector(out, ptype = logical(), size = 2L)

  out <- is_valid_lei(leis_df[1L])
  expect_vector(out, ptype = logical(), size = 2L)

  out <- is_valid_lei(leis_df[["lei"]])
  expect_vector(out, ptype = logical(), size = 2L)

  out <- is_valid_lei(leis_df[[1L]])
  expect_vector(out, ptype = logical(), size = 2L)

  out <- is_valid_lei(tibble::as_tibble(leis_df)["lei"])
  expect_vector(out, ptype = logical(), size = 2L)

  # unexpected input types
  expect_vector(is_valid_lei(1L), ptype = logical(), size = 1L)
  expect_vector(is_valid_lei(1L:2L), ptype = logical(), size = 2L)
  expect_vector(is_valid_lei(TRUE), ptype = logical(), size = 1L)
  expect_vector(is_valid_lei(FALSE), ptype = logical(), size = 1L)
  expect_vector(is_valid_lei(c(TRUE, FALSE)), ptype = logical(), size = 2L)
  expect_vector(is_valid_lei(NA), ptype = logical(), size = 1L)
  expect_vector(is_valid_lei(c(NA, NA)), ptype = logical(), size = 2L)
})

test_that("returns `FALSE` for unexpected values", {
  expect_identical(is_valid_lei(NA), FALSE)
  expect_identical(is_valid_lei(NaN), FALSE)
  expect_identical(is_valid_lei(Inf), FALSE)
  expect_identical(is_valid_lei(NA_integer_), FALSE)
  expect_identical(is_valid_lei(NA_real_), FALSE)
  expect_identical(is_valid_lei(NA_complex_), FALSE)
  expect_identical(is_valid_lei(NA_character_), FALSE)
  expect_identical(is_valid_lei(c(TRUE, FALSE)), c(FALSE, FALSE))
  expect_identical(is_valid_lei(1L:2L), c(FALSE, FALSE))
})
