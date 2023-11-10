#' Create a Histogram
#'
#' This function generates a histogram for a numeric variable in a given data frame.
#'
#' @param data A data frame containing the dataset.
#' @param var The name of the numeric variable to create a histogram for.
#' @param bins The number of bins for the histogram (default is 10).
#' @param col The color of the histogram bars (default is "lightpink").
#'
#'
#' @examples
#' data <- data.frame(x = rnorm(100))
#' hist1 <- histogram(data, var = "x", bins = 20, col = "green")
#' print(hist1)
#'
#'
#' @export


histogram <- function(data, var, bins = 10, col = "lightpink") {
  # check if the data is a data frame
  if (!is.data.frame(data)) {
    stop("The input must be a data frame.")
  }
  # check if the variable is a character string
  if (!is.character(var)) {
    stop("The variable must be a character string.")
  }
  # check if the variable exists in the data
  if (!var %in% names(data)) {
    stop("The variable does not exist in the data.")
  }
  # check if the variable is numeric
  if (!is.numeric(data[[var]])) {
    stop("The variable must be numeric.")
  }
  #plot a histogram of the variable
  hist(data[[var]], breaks = bins, col = col, main = paste("Histogram of", var), xlab = var)
}

