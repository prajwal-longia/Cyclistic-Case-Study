#checking the first few values of the df and the data type
head(bike_rides_df)
str(bike_rides_df)
glimpse(bike_rides_df)


#counting the number of users in member_casual column
counts_df <- bike_rides_df %>% count(member_casual)
print(counts_df)


#counting all null values in the dataset
missing_counts <- bike_rides_df %>%
  summarise(across(everything(), ~ sum(is.na(.))))

null_values_df <- print(missing_counts) #got 7340 null values in end_lat and end_lng columns, got 1080470 null values in start station name column, got 1111801 null values in end station name column in the dataset.


#counting all duplicate values in the dataset
duplicates_count <- function(data, column_name) {
  if (!column_name %in% names(data)) {
    stop(paste("Column", column_name, "not found.")) 
  }
  
  data %>%
    summarize(duplicate_count = sum(duplicated(.data[[column_name]]))) %>%
    {print(paste0("There are ", .$duplicate_count, " duplicates for the column ", column_name))}
}
duplicates_count(bike_rides_df, "ride_id") #found 211 duplicates in ride_id column of the dataset.


#counting all blank values in the dataset
find_blank_values <- function(data) {
  blank_counts <- data %>%
    summarise(across(everything(), ~ {
      if (is.character(.)) {
        sum(. == "" | grepl("^\\s*$", .)) # Count empty strings and whitespace for character
      } else {
        0 # Return 0 for non-character types
      }
    }))
  return(blank_counts)
}

blank_counts_df <- find_blank_values(bike_rides_df)
print(blank_counts_df) #no blank values present in the dataset


#getting the distinct values in rideable type
distinct(bike_rides_df,rideable_type) #3 types of bikes shown (as expected)
