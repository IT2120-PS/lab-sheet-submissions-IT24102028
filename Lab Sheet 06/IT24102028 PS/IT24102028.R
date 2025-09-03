setwd("C:\\Users\\Shanu\OneDrive\\Desktop\\IT24102028 PS")
## Question 1
# Part 1
# The distribution of X is a **binomial distribution**. This is because there is a fixed number of trials (50 students), each trial is independent, there are only two possible outcomes (pass or fail), and the probability of success (passing) is constant at 85% or 0.85.

# Part 2
# We need to find the probability that at least 47 students passed the test, which is P(X >= 47).
# This can be calculated by using the cumulative probability function `pbinom`.
# P(X >= 47) = 1 - P(X <= 46)
1 - pbinom(46, 50, 0.85)

# Alternatively, you can use the lower.tail = FALSE argument.
# P(X >= 47) is equivalent to P(X > 46).
pbinom(46, 50, 0.85, lower.tail = FALSE)

## Question 2
# Part 1
# The random variable (X) is the **number of customer calls received in one hour**.

# Part 2
# The distribution of X is a **Poisson distribution**. This is because we are counting the number of events (calls) occurring in a fixed interval of time (one hour) at a constant average rate (12 calls per hour).

# Part 3
# We need to find the probability that exactly 15 calls are received in an hour, which is P(X = 15).
# This can be calculated using the probability mass function `dpois`.
dpois(15, 12)

