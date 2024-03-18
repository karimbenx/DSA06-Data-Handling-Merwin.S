# Load necessary libraries
library(ggplot2)
library(tidyr)
library(plotly)  # Add this line to load the Plotly library

# Data
university_enrollment <- data.frame(
  Year = 2019:2022,
  Undergraduate = c(15000, 15200, 15500, 15800),
  Postgraduate = c(5000, 5100, 5200, 5300),
  International = c(3000, 3200, 3300, 3400)
)

# Melt the data
university_enrollment_melted <- gather(university_enrollment, "Program", "Number_of_Students", -Year)

# Generate Pie Plot
pie_chart <- plot_ly(labels = ~colnames(university_enrollment)[-1], values = ~university_enrollment[4, -1], type = 'pie') %>%
  layout(title = "University Enrollment (Pie Plot)")

print(pie_chart)

# Describe with a Violin plot
violin_plot <- ggplot(university_enrollment_melted, aes(x = Program, y = Number_of_Students, fill = Program)) +
  geom_violin() +
  labs(title = "University Enrollment (Violin Plot)", x = "", y = "Number of Students") +
  theme_minimal()

print(violin_plot)

# Visualize with Funnel plot
# The geom_funnel() function is not available in ggplot2
# You may need to use another package or custom functions for funnel plots

# Example using geom_bar() instead
funnel_plot <- ggplot(university_enrollment_melted, aes(x = Program, y = Number_of_Students, fill = Program)) +
  geom_bar(stat = "identity") +  # Use geom_bar() for a basic bar plot
  labs(title = "University Enrollment (Funnel Plot)", x = "", y = "Number of Students") +
  theme_minimal()

print(funnel_plot)
