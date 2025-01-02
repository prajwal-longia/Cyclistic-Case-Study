#ANALYSIS PHASE#

#calculating mean, median and mode of trip duration
calculation_df <- bike_rides_df %>% 
  summarise(mean_td = mean(trip_duration),
            median_td = median(trip_duration),
            mode_wday = Mode(day_of_week)
            )
print(calculation_df)


#calculating no of rides, avg ride length, median of ride length by member_casual
calculation_2_df <- bike_rides_df %>% 
  group_by(member_casual) %>% 
  summarize(
    num_of_rides = n(),
    avg_ride_duration = mean(trip_duration),
    median_ride_duration = median(trip_duration)
  )
print(calculation_2_df)

#calculating no of rides by weekdays
calculation_3_df <- bike_rides_df %>% 
  group_by(day_of_week) %>% 
  summarize(
    num_of_rides = n(),
    avg_ride_duration = round(mean(trip_duration),2)
  )
print(calculation_3_df)


#bike preferences between member and casual riders
calculation_4_df <- bike_rides_df %>% 
  group_by(member_casual, rideable_type) %>% 
  summarize(
    num_of_rides = n(),
    mean_td = mean(trip_duration),
    .groups = "drop"
    )
print(calculation_4_df)


#VISUALIZATION#

#calculating the no of rides and their percentage
#1. creating a table
trip_data <- bike_rides_df %>% 
  group_by(member_casual) %>% 
  summarize(
    num_of_rides = n()
    ) %>% 
  mutate(
    percentage = num_of_rides / sum(num_of_rides) * 100
    )
  
#2. creating a pie chart
trip_data %>% 
  ggplot(aes(x = "", y = percentage, fill = member_casual)) +
  geom_bar(stat = "identity") +
  coord_polar("y", start = 0) +
  labs(title = "Percentage & Number Of Rides By User Groups", fill = "Groups", y = "Percentage", x = "") +
  geom_text(aes(label = paste0(round(percentage, 1), "%")), 
            position = position_stack(vjust = 0.4),
            size = 8) +
  geom_text(aes(label = num_of_rides),
            position = position_stack(vjust = 0.5),
            size = 4) +
  theme_void() +
  theme(plot.title = element_text(size = 14, face = "bold"),
        legend.title = element_text(size = 12, face = "bold"))


#number of rides by member and casual riders throughout the week
#1. converting weekdays column to ordered factor
bike_rides_df <- bike_rides_df %>%
  mutate(day_of_week = ifelse(day_of_week == 1, 7, day_of_week - 1) %>% 
           factor(levels = 1:7, 
                  labels = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"), 
                  ordered = TRUE))

#2. creating a chart
bike_rides_df %>%
  ggplot(aes(x = day_of_week, fill = member_casual)) + # Use the updated day_of_week
  geom_bar(position = "dodge") +
  labs(title = "Number of Rides by User Type and Day of Week",
       x = "Day of Week",
       y = "Number of Rides",
       fill = "User Type") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1), plot.title = element_text(hjust = 0.5)) +
  scale_y_continuous(labels = comma)


#ride frequency throughout the month by user group
#1. extract month and format it
bike_rides_df <- bike_rides_df %>%
  mutate(month = format(started_at, "%b")) 

#2. Plotting
bike_rides_df %>%
  ggplot(aes(x = month, fill = member_casual)) +
  geom_bar() +
  facet_wrap(~member_casual)+
  labs(title = "Number of Rides by User Type and Month",
       x = "Month",
       y = "Number of Rides",
       fill = "User Type") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1), plot.title = element_text(hjust = 0.5)) +
  scale_x_discrete(limits = month.abb) +
  scale_y_continuous(labels = comma)


#average riding duration by members and casual riders each day
bike_rides_df %>%
  group_by(member_casual, day_of_week) %>%
  summarize(mean_td = mean(trip_duration), .groups = "drop") %>%
  ggplot(aes(x = day_of_week, y = mean_td, fill = member_casual)) +
  geom_col(position = "dodge") +
  labs(title = "Average riding duration by User Type each day",
       x = "Day of week",
       y = "Average ride duration in minutes",
       fill = "Group") +
  theme(axis.title.x = element_text(size = 12, face = "bold"),
        axis.title.y = element_text(size = 12, face = "bold"),
        plot.title = element_text(size = 14, face = "bold"),
        legend.title = element_text(size = 12, face = "bold"))


#type of bike used by user group
bike_rides_df %>% 
  ggplot(aes(x = rideable_type, fill = day_of_week))+
  geom_bar() +
  facet_wrap(~member_casual) +
  labs(title = "Type of Bikes used by User Group",
       x = "Bike Type",
       y = "Number of Rides" ,
       fill = "Day Of Week") +
  theme(axis.title.x = element_text(size = 12, face = "bold"),
        axis.title.y = element_text(size = 12, face = "bold"),
        plot.title = element_text(size = 14, face = "bold"),
        legend.title = element_text(size = 12, face = "bold"))


#average ride duration by different bike types
bike_rides_df %>% 
  group_by(member_casual, rideable_type) %>% 
  summarize(mean_td = mean(trip_duration), .groups = "drop") %>% 
  ggplot(aes(x = rideable_type, y = mean_td, fill = member_casual)) +
  geom_col(position = "dodge") +
  labs(title = "Average Ride Duration By User Group & Bike Types",
       x = "Bike Type",
       y = "Avg Ride Duration In Min" ,
       fill = "Group") +
  theme(axis.title.x = element_text(size = 12, face = "bold"),
        axis.title.y = element_text(size = 12, face = "bold"),
        plot.title = element_text(size = 14, face = "bold"),
        legend.title = element_text(size = 12, face = "bold"))


#checking peak riding time by analyzing started at & ended at columns
#1 extracting hour out of the date-time
bike_rides_df$hour <- format(bike_rides_df$started_at, "%H")

#2 creating a chart to analyze it
bike_rides_df %>%
  group_by(member_casual, hour) %>%
  summarize(num_of_rides = n(), .groups = "drop") %>%
  ggplot(aes(x = hour, y =  num_of_rides, fill = member_casual)) +
  geom_col(position = "identity", alpha = 0.8) +
  scale_fill_manual(values = c(member = "skyblue", casual = "green")) +
  labs(title = "Distribution of bike rides throughout the day", 
       x = "Hour",
       y = "Num of rides started",
       fill = "Group") +
  theme(axis.title.x = element_text(size = 12, face = "bold"),
        axis.title.y = element_text(size = 12, face = "bold"),
        plot.title = element_text(size = 14, face = "bold"),
        legend.title = element_text(size = 12, face = "bold")) +
  scale_y_continuous(labels = comma)


#start stations where you can approach casual riders
bike_rides_df %>% 
  filter(member_casual == "casual") %>% 
  group_by(start_station_name) %>% 
  summarize(num_of_rides = n()) %>% 
  arrange(desc(num_of_rides)) %>% 
  head(10) %>% 
  ggplot(aes(x = reorder(start_station_name, num_of_rides), y = num_of_rides)) +
  geom_bar(stat = "identity" , fill = "skyblue") +
  coord_flip() +
  labs(title = "Top 10 Start Stations for Casual Riders", 
       x = "Start Stations",
       y = "Num of rides started") +
  theme(axis.title.x = element_text(size = 12, face = "bold"),
        axis.title.y = element_text(size = 12, face = "bold"),
        plot.title = element_text(size = 14, face = "bold"))

#hourly flowrate at popular station
bike_rides_df %>% 
  filter(start_station_name == "Streeter Dr & Grand Ave") %>% 
  group_by(member_casual, hour, day_of_week) %>% 
  summarize(num_of_rides = n(), .groups = "drop") %>% 
  ggplot(aes(x = hour, y = num_of_rides, fill = member_casual)) +
  geom_col(position = "identity", alpha = 0.8) +
  facet_wrap(~day_of_week)
