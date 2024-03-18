# Load necessary libraries
library(ggplot2)
library(reshape2)
library(plotly)

# 2. Annual Rainfall
# Data
annual_rainfall <- data.frame(
  Year = 2019:2022,
  City_A = c(1200, 1150, 1230, 1180),
  City_B = c(800, 850, 870, 900),
  City_C = c(900, 950, 990, 950)
)

# Generate Scatter Plot
scatter_plot <- ggplot(melt(annual_rainfall, id.vars = "Year"), aes(x = Year, y = value, color = variable)) +
  geom_point() +
  labs(title = "Annual Rainfall (Scatter Plot)", x = "Year", y = "Rainfall (mm)") +
  theme_minimal()

print(scatter_plot)

# Pie plot
pie_plot <- plot_ly(labels = ~names(annual_rainfall)[-1], values = ~annual_rainfall[1, -1], type = 'pie', hole = 0.5) %>%
  layout(title = "Annual Rainfall (Doughnut Pie Plot)")

print(pie_plot)


# Visualize with Grouped Bar plot
grouped_bar_plot <- ggplot(melt(annual_rainfall, id.vars = "Year"), aes(x = Year, y = value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Annual Rainfall (Grouped Bar Plot)", x = "Year", y = "Rainfall (mm)") +
  theme_minimal()

print(grouped_bar_plot)
