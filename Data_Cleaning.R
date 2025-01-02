#removing columns that are not necessary to the analysis
bike_rides_df <- bike_rides_df %>% select(-c(start_station_id, end_station_id))


#removing null values in the dataset
bike_rides_df <- drop_na(bike_rides_df) #4244722 entries left


#removing all duplicate values in the dataset
bike_rides_df <- distinct(bike_rides_df, ride_id, .keep_all = TRUE) #There are 0 duplicates for the column ride_id


#ride duration column created
bike_rides_df$trip_duration <- bike_rides_df$ended_at - bike_rides_df$started_at
bike_rides_df$trip_duration <- round(as.numeric(bike_rides_df$trip_duration, units="mins"),2)


#weekday column created
bike_rides_df$day_of_week <- wday(bike_rides_df$started_at)
  

#removing trip duration entries where values are negative
bike_rides_df <- bike_rides_df %>%
  filter(trip_duration >= 0) #removed 44 entries

