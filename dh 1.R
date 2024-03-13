# Load necessary libraries
library(ggplot2)
library(reshape2)

# Economic Analysis Dataset
economic_data <- data.frame(
  Month = c("Jan", "Feb", "March", "April", "May", "Jun", "July", "August", "Sep", "Oct", "Nov", "Dec"),
  Economic_Condition = c("Good", "Good", "Good", "Good", "Fair", "Fair", "Good", "Bad", "Fair", "Good", "Bad", "Fair"),
  Unemployment_Rate = c("10.7%", "9.8%", "10.2%", "11.2%", "15.75%", "17.8%", "19.4%", "25.6%", "18.6%", "15.6%", "26.7%", "19.5%")
)
pie_data <- table(economic_data$Economic_Condition)
percentages <- round(prop.table(pie_data) * 100, 1)
labels <- paste(names(pie_data), "(", percentages, "%)", sep = "")

# Pie Chart
pie(pie_data, labels = labels,
    main = "Distribution of Economic Conditions",
    col = c("green", "yellow", "red"))

# Convert Unemployment Rate to numeric
economic_data$Unemployment_Rate <- as.numeric(gsub("%", "", economic_data$Unemployment_Rate))

# 1. Stacked Bar Plot
ggplot(economic_data, aes(x = Month, y = Unemployment_Rate, fill = Economic_Condition)) +
  geom_bar(stat = "identity") +
  labs(title = "Unemployment Rate by Economic Condition",
       x = "Month",
       y = "Unemployment Rate (%)",
       fill = "Economic Condition") +
  theme_minimal()


# 3. Grouped Bar Plot
ggplot(economic_data, aes(x = Economic_Condition, y = Unemployment_Rate, fill = Month)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Unemployment Rate by Month and Economic Condition",
       x = "Economic Condition",
       y = "Unemployment Rate (%)",
       fill = "Month") +
  theme_minimal()
