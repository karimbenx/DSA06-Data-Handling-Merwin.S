# Data
social_media_followers <- data.frame(
  Month = month.abb,
  Facebook = c(12000, 12500, 13000, 13500),
  Instagram = c(15000, 15500, 16000, 16500),
  Twitter = c(8000, 8200, 8400, 8600)
)

# Generate Stacked Bar Plot
stacked_bar_plot <- ggplot(melt(social_media_followers, id.vars = "Month"), aes(x = Month, y = value, fill = variable)) +
  geom_bar(stat = "identity") +
  labs(title = "Social Media Followers (Stacked Bar Plot)", x = "Month", y = "Followers") +
  theme_minimal()

print(stacked_bar_plot)

# Describe with a Histogram plot
histogram_plot <- ggplot(melt(social_media_followers, id.vars = "Month"), aes(x = value, fill = variable)) +
  geom_histogram(binwidth = 500, position = "dodge") +
  labs(title = "Social Media Followers (Histogram)", x = "Followers", y = "Frequency") +
  theme_minimal()

print(histogram_plot)

# Visualize with Line plot
line_plot <- ggplot(melt(social_media_followers, id.vars = "Month"), aes(x = Month, y = value, color = variable)) +
  geom_line() +
  labs(title = "Social Media Followers (Line Plot)", x = "Month", y = "Followers") +
  theme_minimal()

print(line_plot)
