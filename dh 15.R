# Load necessary libraries
library(ggplot2)
library(gridExtra)

# Create a dataframe with the provided dataset
data <- data.frame(
  Ozone = c(41, 36, 12, 18, NA, 28),
  Solar.R = c(190, 118, 149, 313, NA, NA),
  Wind = c(7.4, 8.0, 12.6, 11.5, 14.3, 14.9),
  Temp = c(67, 72, 74, 62, 56, 66),
  Month = c(5, 5, 5, 5, 5, 5),
  Day = c(1, 2, 3, 4, 5, 6)
)

# Summarize the data for pie plot (for example, sum of Ozone values for each day)
pie_data <- aggregate(Ozone ~ Day, data = data, sum, na.rm = TRUE)

# Create pie plot
pie_chart <- ggplot(pie_data, aes(x = "", y = Ozone, fill = factor(Day))) +
  geom_bar(stat = "identity") +
  coord_polar("y", start = 0) +
  labs(title = "Ozone Levels by Day")

# Histogram plot for Ozone levels
histogram_plot <- ggplot(data, aes(x = Ozone)) +
  geom_histogram(fill = "blue", color = "black", bins = 10) +
  labs(title = "Histogram of Ozone Levels", x = "Ozone", y = "Frequency")

# Scatterplot for Solar R. and Wind
scatter_plot <- ggplot(data, aes(x = Solar.R, y = Wind)) +
  geom_point() +
  labs(title = "Scatterplot of Solar R. and Wind", x = "Solar Radiation", y = "Wind Speed")

# Box plot for Temperature
box_plot <- ggplot(data, aes(x = "", y = Temp)) +
  geom_boxplot(fill = "green", color = "black") +
  labs(title = "Boxplot of Temperature")

# Arrange all plots in a single plot
combined_plot <- grid.arrange(pie_chart, histogram_plot, scatter_plot, box_plot, nrow = 2)

# Display the combined plot
print(combined_plot)
