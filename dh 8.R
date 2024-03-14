# Customer demographics data
customer_demographics <- data.frame(
  Customer_ID = c(1, 2, 3),
  Age = c(28, 35, 42),
  Gender = c("Female", "Male", "Female"),
  Income = c(50000, 60000, 75000)
)

# Pie plot for customer gender distribution
ggplot(customer_demographics, aes(x = "", fill = Gender)) +
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Customer Gender Distribution")

# Stacked bar plot for customer age distribution by gender
ggplot(customer_demographics, aes(x = Gender, y = Age, fill = Gender)) +
  geom_bar(stat = "identity") +
  labs(title = "Customer Age Distribution by Gender", x = "Gender", y = "Age")

# Box plot for customer income distribution
ggplot(customer_demographics, aes(x = "", y = Income)) +
  geom_boxplot() +
  labs(title = "Customer Income Distribution")
