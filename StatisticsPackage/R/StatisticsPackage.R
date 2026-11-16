calculate_mean <- function(x) {
  mean(x)
}

calculate_median <- function(x) {
  median(x)
}

calculate_mode <- function(x) {
  values <- unique(x)
  values[which.max(tabulate(match(x, values)))]
}

calculate_variance <- function(x) {
  var(x)
}

calculate_sd <- function(x) {
  sd(x)
}

library(StatisticsPackage)

data <- c(10, 20, 20, 30, 40)

calculate_mean(data)
calculate_median(data)
calculate_mode(data)
calculate_variance(data)
calculate_sd(data)
