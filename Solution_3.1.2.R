### Solution Exercise 3.1.2

schiphol_dat <-
  read.csv(
    paste0(
      "https://raw.githubusercontent.com/hannesrosen",
      "busch/schiphol_class/master/schiphol_data.csv"
    )
  )

View(schiphol_dat)

x11()
ggplot(data = schiphol_dat, aes(x = DATE, y = TMAX)) +
  geom_point() +
  labs(x = "Year", y = "Maximum Temperature")