test_that("hi() only accepts appropriate 'who'", {
  expect_equal(hi("Craig"), "hi CRAIG how are you?")
  expect_error(hi("Craig", "chat"))
  expect_error(hi(123))
  expect_error(hi())
})

test_that("is_scaler_characters_works",{
  expect_true(is_scaler_character("foo"))
  expect_false(is_scaler_character(123))
  expect_false(is_scaler_character(c("foo", "bar")))
  expect_false(is_scaler_character(NA_character_))
})
