# Test: Check if the function raises an error for invalid input

test_that("histogram function raises an error for an invalid input", {
  data <- data.frame(y = "text")
  var <- "y"
  expect_error(histogram(data, var = var), "The variable must be numeric")
})

