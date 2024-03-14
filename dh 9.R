# Customer review data
customer_reviews <- data.frame(
  Customer_ID = c(1, 2, 3, 4, 5),
  Customer_Name = c("Ram", "Shiva", "Kesav", "Hari", "Harini"),
  Review = c("Products are very good", "Ok but need to add more quantities", "Average", "Not liked the products", "Good place to buy")
)

# Line plot for customer review sentiment
ggplot(customer_reviews, aes(x = Customer_ID, y = factor(Review), group = 1)) +
  geom_line() +
  labs(title = "Customer Reviews", x = "Customer ID", y = "Review")

# Scatter plot for customer reviews
ggplot(customer_reviews, aes(x = Customer_ID, y = Review)) +
  geom_point()
