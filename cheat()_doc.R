### cheat() documentation

# installing and loading required packages
#install.packages("utils")
#install.packages("stringr")
library(utils)
library(stringr)

# function
cheat <- function(q_nr) {
  nr <- as.character(q_nr)
  url <- str_c("https://github.com/L-Groot/Assignment-3.2/blob/main/Solution_3.1.","1",".R")
  browseURL(url)
}

# test run
cheat(1)