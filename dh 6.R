# Load required libraries
library(ggplot2)
library(dplyr)

# Monthly product sales data
monthly_sales <- data.frame(
  Product_ID = c(1, 2, 3, 4),
  Product_Name = c("Product A", "Product B", "Product C", "Product D"),
  January_April_Sales = c(20000, 15000, 12000, 12000),
  May_August_Sales = c(22000, 18000, 14000, 18000),
  September_December_Sales = c(24000, 16000, 11000, 14000)
)

# Funnel plot for monthly product sales
ggplot(monthly_sales, aes(x = "", y = September_December_Sales, fill = Product_Name)) +
  geom_bar(stat = "identity", width = 1) +
  coord_flip() +
  labs(title = "Monthly Product Sales", y = "Sales", x = "") +
  theme_minimal()

# Mosaic plot for monthly product sales
mosaicplot(as.matrix(monthly_sales[, -c(1:2)]))

# Bar plot for monthly product sales
monthly_sales_long <- monthly_sales %>%
  pivot_longer(cols = c(January_April_Sales, May_August_Sales, September_December_Sales),
               names_to = "Month", values_to = "Sales")

ggplot(monthly_sales_long, aes(x = Product_Name, y = Sales, fill = Month)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Monthly Product Sales", x = "Product Name", y = "Sales")
