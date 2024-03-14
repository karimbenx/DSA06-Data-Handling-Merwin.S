# High-product consumers data
high_product_consumers <- data.frame(
  Customer_ID = c("CG-12520", "CG-12520", "DV-13045", "SO-20335", "SO-20335", "BH-11710", "BH-11710", "BH-11710"),
  City = c("Henderson", "Henderson", "Los Angeles", "Fort Lauderdale", "Fort Lauderdale", "Los Angeles", "Los Angeles", "Los Angeles"),
  Postal_Code = c(42420, 42420, 90036, 33311, 33311, 90032, 90032, 90032),
  Product_ID = c("FUR-BO-10001798", "FUR-CH-10000454", "OFF-LA-10000240", "FUR-TA-10000577", "OFF-ST-10000760", "FUR-FU-10001487", "OFF-AR-10002833", "TEC-PH-10002275"),
  Category = c("Furniture", "Furniture", "Office Supplies", "Furniture", "Office Supplies", "Furniture", "Office Supplies", "Technology"),
  Product_Name = c("Bush Somerset Collection Bookcase", "Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back", "Self-Adhesive Address Labels for Typewriters by Universal", "Bretford CR4500 Series Slim Rectangular Table", "Eldon Fold N Roll Cart System", "Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood", "Newell 322", "Mitel 5320 IP Phone VoIP phone"),
  Sales = c(261.96, 731.94, 14.62, 957.5775, 22.368, 48.86, 7.28, 907.152)
)

# Bar plot for high-product consumers
ggplot(high_product_consumers, aes(x = Customer_ID, y = Sales, fill = Category)) +
  geom_bar(stat = "identity") +
  labs(title = "High-Product Consumers", x = "Customer ID", y = "Sales")

# Scatter plot for high-product consumers
ggplot(high_product_consumers, aes(x = Customer_ID, y = Sales)) +
  geom_point() +
  labs(title = "High-Product Consumers", x = "Customer ID", y = "Sales")

# Line plot for high-product consumers
ggplot(high_product_consumers, aes(x = Customer_ID, y = Sales, group = Category, color = Category)) +
  geom_line() +
  labs(title = "High-Product Consumers", x = "Customer ID", y = "Sales")
