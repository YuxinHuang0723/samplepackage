# within test-my_t.test.R
test_that("my_t.test work for testing a hypothesis", {
  expect_equal(my_t.test(gapminder$lifeExp, "greater", 60),
               -1.68, 1703, 0.9534296, "greater")
})
test_that("non-suitable input throws informative error", {
  expect_error(my_t.test(gapminder$lifeExp, "greater than", 60))
})
