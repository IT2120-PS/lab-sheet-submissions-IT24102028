setwd("C:\\Users\\ASUS\\Desktop\\Lab 9")

mean_time <- 45
sd_time <- 2
n <- 25


"set.seed(123)" 
bake_time <- rnorm(n, mean = mean_time, sd = sd_time)


bake_time


t_test_result <- t.test(bake_time, mu = 46, alternative = "less", conf.level = 0.95)


t_test_result


t_statistic <- t_test_result$statistic
p_value <- t_test_result$p.value
conf_interval <- t_test_result$conf.int
sample_mean <- mean(bake_time)


cat("Test Statistic (t):", t_statistic, "\n")
cat("P-value:", p_value, "\n")
cat("95% Confidence Interval:", conf_interval, "\n")
cat("Sample Mean:", sample_mean, "\n")


if (p_value < 0.05) {
  cat("Conclusion: Reject H0. Average baking time is less than 46 minutes.\n")
} else {
  cat("Conclusion: Fail to reject H0. Not enough evidence to say mean < 46.\n")
}