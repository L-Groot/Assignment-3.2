# install.packages("ggplot2")
# install.packages("wesanderson")
library(wesanderson)
library(ggplot2)

# function to sample a colour palette
sample_palette <- function(seed = NULL) {
  if(!is.null(seed)) set.seed(seed)
  sample(wes_palettes, 1)[[1]]
}

# function that produces random bubble art

bubble_art <- function(seed) {
  
  theme <- sample_palette(seed)
  
  x <- runif(300,1,40)
  y <- runif(300,1,40)
  size_index <- as.character(round(runif(300,3,10), digits = 0))
  color_index <- as.character(round(runif(300,1,length(theme)), digits = 0))
  opacity_index <- as.character(round(runif(300,1,100), digits = 0))
  
  dat <- cbind(x,y,size_index,color_index,opacity_index)
  dat <- as.data.frame(dat)
  
  ggplot(dat, aes(x = x, y = y)) +
    geom_point(aes(size = size_index, color = color_index, alpha = opacity_index)) +
    theme_void() +
    scale_color_manual(values = theme) +
    theme(legend.position = "none")
  
}