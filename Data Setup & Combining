#installing all the necessary packages
install.packages("tidyverse")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("lubridate")
install.packages("DescTools")


#loading all the required libraries
library(dplyr)
library(ggplot2)
library(lubridate)
library(DescTools)
library(scales)


#setting up the working directory
setwd("D:/Case Study")


#loaded data of the last 12 months
df1 <- read_csv("D:/Case Study/202312-divvy-tripdata.csv")
df2 <- read_csv("D:/Case Study/202401-divvy-tripdata.csv")
df3 <- read_csv("D:/Case Study/202402-divvy-tripdata.csv")
df4 <- read_csv("D:/Case Study/202403-divvy-tripdata.csv")
df5 <- read_csv("D:/Case Study/202404-divvy-tripdata.csv")
df6 <- read_csv("D:/Case Study/202405-divvy-tripdata.csv")
df7 <- read_csv("D:/Case Study/202406-divvy-tripdata.csv")
df8 <- read_csv("D:/Case Study/202407-divvy-tripdata.csv")
df9 <- read_csv("D:/Case Study/202408-divvy-tripdata.csv")
df10 <- read_csv("D:/Case Study/202409-divvy-tripdata.csv")
df11 <- read_csv("D:/Case Study/202410-divvy-tripdata.csv")
df12 <- read_csv("D:/Case Study/202411-divvy-tripdata.csv")


#created a df including the 12 months of data
bike_rides_df <- rbind(df1, df2, df3, df4, df5, df6, df7, df8, df9, df10, df11, df12)
