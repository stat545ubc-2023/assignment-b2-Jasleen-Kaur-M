# Test: Provide an invalid input and check if it throws an error

test_that("histogram function throws an error for an invalid input", {
  data <- data.frame(z = "notnumeric")
  var <- "z"
  expect_error(histogram(data, var = var), "The variable must be numeric", 
               info = "Should throw an error for an invalid input")
})
