test_that("hi() only accepts appropriate 'who'", {
  expect_equal(hi("Craig"), "hi CRAIG how are you?")
  expect_error(hi(123))
  expect_error(hi())
})
