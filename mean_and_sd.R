
mean_and_sd = function(x){
  if (!is.numeric(x)) {
    stop("Argument x should be numeric")
  }  
  
  if (length(x) < 5) {
    stop("Mean and sd cannot be computed for length less that 5 numbers")
  }
  mean_x = mean(x, na.rm = TRUE)
  sd_x = sd(x, na.rm = TRUE)
  
  tibble(
    mean = mean_x, 
    sd = sd_x
  )
}
