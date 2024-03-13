library(ggplot2)

# School Dataset
school_data <- data.frame(
  SCHOOL = c("A", "A", "A", "B", "B", "B", "C", "C", "C", "D", "D", "D"),
  GRADE_LEVEL = c("Grade 1", "Grade 2", "Grade 3", "Grade 1", "Grade 2", "Grade 3",
                  "Grade 1", "Grade 2", "Grade 3", "Grade 1", "Grade 2", "Grade 3"),
  NUMBER_OF_STUDENTS = c(25, 30, 20, 22, 28, 18, 20, 25, 15, 28, 32, 24)
)
any(is.na(school_data))

# Convert data types
school_data$NUMBER_OF_STUDENTS <- as.numeric(school_data$NUMBER_OF_STUDENTS)

# Custom colors for grade levels
grade_colors <- c("Grade 1" = "skyblue", "Grade 2" = "orange", "Grade 3" = "green")

# Mosaic Plot
ggplot(school_data, aes(x = SCHOOL, y = GRADE_LEVEL, fill = NUMBER_OF_STUDENTS)) +
  geom_tile(stat = "identity") +
  labs(title = "Mosaic Plot of School vs. Grade Level",
       x = "School",
       y = "Grade level",
       fill = "Grade Level")

# Histogram Plot
hist(school_data$NUMBER_OF_STUDENTS,
     main = "Histogram of Number of Students",
     xlab = "Number of Students",
     ylab = "Frequency",
     col = "skyblue")

# Scatter Plot (Using ggplot2)
ggplot(school_data, aes(x = GRADE_LEVEL, y = NUMBER_OF_STUDENTS)) +
  geom_point(color = "red") +
  labs(title = "Scatter Plot of Grade Level vs. Number of Students",
       x = "Grade Level",
       y = "Number of Students")
