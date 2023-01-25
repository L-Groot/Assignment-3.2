### Solution Exercise 3.1.3

# install.packages("titanic")
# install.packages("ggplot2")
library(titanic)
library(ggplot2)
View(titanic_train)

titanic_train %>% group_split(Sex)

plot <-
  ggplot(data = titanic_train, aes(factor(Sex), fill = factor(Survived))) +
  geom_bar() +
  labs(x = "Sex") +
  scale_fill_discrete(
    name = "How did it go?",
    breaks = c("0", "1"),
    labels = c("dead", "alive")
  )