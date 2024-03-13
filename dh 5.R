# Load required libraries
library(ggplot2)
library(ggpattern)

# Jobs Data
jobs_data <- data.frame(
  Year = c(2019, 2020, 2022, 2023, 2024),
  Job_Sector = c("IT", "Government Job", "Customer care", "Bank", "Games"),
  Job_Seekers_Rate = c(95, 97, 98, 82, 74),
  Selection_Rate = c(25, 12, 45, 20, 35)
)

# 1. Pie Plot for Job Seekers' Data
pie_data <- jobs_data[jobs_data$Year == 2024, ] # Selecting data for the latest year
pie(pie_data$Job_Seekers_Rate, labels = paste(pie_data$Job_Sector, "(", pie_data$Job_Seekers_Rate, "%)", sep = ""), 
    main = "Pie Plot of Job Seekers by Job Sector", col = rainbow(nrow(pie_data)))

# 2. Mosaic Plot for the Given Dataset
mosaic_df <- data.frame(
  Year = rep(jobs_data$Year, each = nrow(jobs_data)),
  Job_Sector = rep(jobs_data$Job_Sector, times = nrow(jobs_data)),
  Job_Seekers_Rate = rep(jobs_data$Job_Seekers_Rate, each = nrow(jobs_data))
)
ggplot(mosaic_df, aes(x = factor(Year), y = Job_Sector, fill = Job_Seekers_Rate)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "skyblue") +
  labs(title = "Mosaic Plot of Job Sectors by Year and Job Seekers Rate",
       x = "Year",
       y = "Job Sector",
       fill = "Job Seekers Rate")

# 3. Funnel Plot for Selection Dataset
funnel_plot <- ggplot(jobs_data, aes(x = factor(Year), y = Selection_Rate)) +
  geom_funnel(aes(filter = Year != "2024"), color = "blue", alpha = 0.7) +
  labs(title = "Funnel Plot of Selection Rate by Year",
       x = "Year",
       y = "Selection Rate (%)")
print(funnel_plot)
