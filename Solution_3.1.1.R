### Solution Exercise 3.1.1

# install.packages("truncnorm")
library(truncnorm)
library(dplyr)

? rtruncnorm

grades <-
  rtruncnorm(65,
             a = 0,
             b = 10,
             mean = 7.7,
             sd = 2) %>% round(digits = 1)