# Temperature and Precipitation Dataset
weather_data <- data.frame(
  Date = as.Date(c("01/01/2024", "02/01/2024", "03/01/2024", "04/01/2024", "05/01/2024", "06/01/2024")),
  Station_A_Temperature = c(25.0, 24.5, 26.2, 23.8, 25.5, 23.0),
  Station_A_Precipitation = c(0.1, 0.0, 0.3, 0.2, 0.1, 0.4),
  Station_B_Temperature = c(23.5, 22.8, 25.0, 22.5, 24.5, 21.8),
  Station_B_Precipitation = c(0.2, 0.3, 0.1, 0.0, 0.4, 0.2)
)

# 1. Time Series Plot
ggplot(weather_data, aes(x = Date)) +
  geom_line(aes(y = Station_A_Temperature, color = "Station A Temperature")) +
  geom_line(aes(y = Station_B_Temperature, color = "Station B Temperature")) +
  geom_line(aes(y = Station_A_Precipitation * 10, color = "Station A Precipitation")) +
  geom_line(aes(y = Station_B_Precipitation * 10, color = "Station B Precipitation")) +
  labs(title = "Temperature and Precipitation Over Time",
       x = "Date",
       y = "Value",
       color = "Variable") +
  theme_minimal()

# 2. Line Plot
ggplot(weather_data, aes(x = Date)) +
  geom_line(aes(y = Station_A_Temperature, color = "Station A Temperature")) +
  geom_line(aes(y = Station_B_Temperature, color = "Station B Temperature")) +
  labs(title = "Temperature Over Time",
       x = "Date",
       y = "Temperature",
       color = "Station") +
  theme_minimal()

# 3. Stacked Bar Plot
weather_data_long <- melt(weather_data, id.vars = "Date")
ggplot(weather_data_long, aes(x = Date, y = value, fill = variable)) +
  geom_bar(stat = "identity") +
  labs(title = "Temperature and Precipitation Over Time",
       x = "Date",
       y = "Value",
       fill = "Variable") +
  theme_minimal()
