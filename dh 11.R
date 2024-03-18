# Load necessary libraries
library(ggplot2)
library(tidyr)

# Data
product_inventory <- data.frame(
  Product = c("Product X", "Product Y", "Product Z", "Product W"),
  Warehouse_A = c(200, 150, 300, 100),
  Warehouse_B = c(150, 100, 250, 150),
  Warehouse_C = c(100, 50, 200, 200)
)

# Generate Line Plot
product_inventory_melted <- gather(product_inventory, Warehouse, Inventory_Level, -Product)
# Generate Line Plot
line_plot <- ggplot(product_inventory_melted, aes(x = Warehouse, y = Inventory_Level, color = Product)) +
  geom_line(aes(group = Product)) +
  geom_point() +
  labs(title = "Product Inventory Levels (Line Plot)", x = "Warehouse", y = "Inventory Level") +
  theme_minimal()

print(line_plot)
# Describe inventory with a Bar plot
bar_plot <- ggplot(product_inventory_melted, aes(x = Product, y = Inventory_Level, fill = Warehouse)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Product Inventory Levels (Bar Plot)", x = "Product", y = "Inventory Level") +
  theme_minimal()

print(bar_plot)

# Visualize inventory levels with box plot
box_plot <- ggplot(product_inventory_melted, aes(x = Warehouse, y = Inventory_Level, fill = Warehouse)) +
  geom_boxplot() +
  labs(title = "Product Inventory Levels (Box Plot)", x = "Warehouse", y = "Inventory Level") +
  theme_minimal()

print(box_plot)
