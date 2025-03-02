test_that("correctly identifies valid LEIs", {
  expect_true(is_valid_lei("XXXXXXXXXXXXXXXXXX35")) # manufactured valid
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
