# Test: Provide a valid input and check if it returns a ggplot object

test_that("histogram function works as expected with valid input", {
  data <- data.frame(x = rnorm(100))
  var <- "x"
  hist1 <- histogram(data, var = var, bins = 20, col = "lightpink")
  expect_is(hist1, "histogram", info = "Should return a histogram object")
})