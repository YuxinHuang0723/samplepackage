#' Power function
#'
#' This function raises input to a power.


my_lm <- function(formula, data) {

  #using model.frame()to construct the data into frame
  #using model.matrix to extract the independent variable from the frame
  #using model.response to extract the dependent variable from the frame
  #turning y into matrix form for later calculation
  example <- model.frame(formula, data)
  x <- model.matrix(formula, data = example)
  y <- model.response(data = example)
  y <- as.matrix(y)

  #using beta_hat to store the slope coefficient
  #calculate the df
  #calculate the theta square in order to calculate standard error
  beta_hat <- round((solve(t(x) %*% x)) %*% t(x) %*% y, 5)
  df <- length(y)-  (x + 1)
  theta <- sum(((y - x %*% beta_hat) ^ 2) / df)

  #first use error to store the diagnal value of the matrix
  #then use std_error to store the standard error of value after square
  error <- diag(theta * solve(t(x) %*% x))
  std_error <- round(sqrt(error),5)

  #using t_value to store test statistics
  #p_value to store the p value of the hypothesis testing
  t_value <- beta_hat / std_error
  p_value <- 2 * pt(t_value, df, lower.tail = TRUE)

  #forming a matrix to store the final statistics which we want to show
  #transform the matrix into data frame
  #and return the final data frame
  matrix1 <- matrix(nrow= 2, ncol = 4)
  matrix1 <- cbind(beta_hat, std_error, t_value, p_value)
  colnames(matrix1) <- c("Estimate", "Std. Error", "t value", "Pr(>|t|)")
  matrix1 <- as.data.frame(matrix1)
  return(matrix1)
}
