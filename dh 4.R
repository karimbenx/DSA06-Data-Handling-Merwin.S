# Load the required library
library(ggplot2)

# Internet Users by Browser Dataset
internet_data <- data.frame(
  Year = c(2019, 2020, 2022, 2023, 2024),
  Browser = c("Chrome", "Chrome", "Chrome", "Chrome", "Chrome"),
  Users = c(22.7, 25.8, 28.7, 30.5, 35.2)
)

# Pie Plot
pie(internet_data$Users, labels = internet_data$Year, 
    main = "Distribution of Internet Users by Year",
    col = rainbow(length(internet_data$Users)))

# Mosaic Plot
ggplot(data = internet_data, aes(x = factor(1), y = Users, fill = Year)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  theme_minimal() +
  labs(title = "Mosaic Plot of Internet Users by Year",
       x = NULL,
       y = "Internet Users",
       fill = "Year")

# Scatter Plot
ggplot(internet_data, aes(x = Year, y = Users)) +
  geom_point(color = "blue") +
  labs(title = "Internet Users Over Time",
       x = "Year",
       y = "Users")
