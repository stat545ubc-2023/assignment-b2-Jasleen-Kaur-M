#' Test histogram function works as expected with valid input
#'
#' @test
  
test_that("histogram function works as expected with valid input", {
  
  # Load the `cancer_sample` data from the `datateachr` package
  library(datateachr)
  
  data <- cancer_sample
  
  data <- data.frame(x = rnorm(100))
  var <- "x"
  hist1 <- histogram(data, var = var, bins = 20, col = "lightpink")
  expect_s3_class(hist1, "histogram")

})