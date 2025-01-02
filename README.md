# Cyclistic-Case-Study
## Google data Analytics Capstone Project

## Scenario
I am a junior data analyst working on the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, my team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve my recommendations, so they must be backed upwith compelling data insights and professional data visualizations.

## Characters and teams
Cyclistic: A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-sharing more inclusive to people with disabilities and riders who can't use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use the bikes to commute to work each day.

Lily Moreno: The director of marketing and your manager. Moreno is responsible for the development of campaigns and initiatives to promote the bike-share program. These may include email, social media, and other channels.

Cyclistic marketing analytics team: A team of data analysts who are responsible for collecting, analyzing, and reporting data that helps guide Cyclistic marketing strategy. You joined this team six months ago and have been busy learning about Cyclistic's mission and business goals—as well as how you, as a junior data analyst, can help Cyclistic achieve them.

Cyclistic executive team: The notoriously detail-oriented executive team will decide whether to approve the recommended marketing program.

## Background

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

## Ask Phase
 Three questions wil guide the future marketing program:
 1. How do annual members and casual riders use Cyclistic bikes differently?
 2. Why would casual riders buy Cyclistic annual memberships?
 3. How can Cyclistic use digital media to in uence casual riders to become members?

## Prepare Phase
### Dataset
I had used Cyclistic’s historical trip data to analyze and identify trends. You can download the previous 12 months of Cyclistic trip data [here](https://divvy-tripdata.s3.amazonaws.com/index.html).
(Note: The datasets have a different name because Cyclistic is a fictional company. For the purposes of this case study, the datasets are appropriate and will enable you to answer the business questions. The data has been made available by Motivate International Inc. under this [license](https://ride.divvybikes.com/data-license-agreement).)
This is public data that you can use to explore how different customer types are using Cyclistic bikes. However, note that data-privacy issues prohibit you from using riders' personally identifiable information. This means that you won't be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.

## Process Phase
To work with Cyclistic's data, I had to apply previous knowledge I acquired during the Google Data Analytics Professional Certificate. Excel and RStudio.
This project utilized RStudio as the primary environment for data analysis and visualization. While initial data exploration and loading was conducted using spreadsheet software, RStudio provided the necessary tools for efficient data cleaning, transformation, and statistical analysis, allowing for robust and reproducible results.

1. Data Setup and Combining
Scripts [here](data_setup_and_combining.R)(data_setup_and_combining.R)
The initial step involved consolidating the 12 individual monthly datasets into a single, unified dataframe. This process was crucial for ensuring a comprehensive and consistent analysis across the entire observation period. The resulting dataframe, aptly named bike_rides_df, served as the foundation for all subsequent data analysis and exploration.

3. Data Exploration
A thorough exploratory data analysis (EDA) was conducted to gain a deeper understanding of the dataset's characteristics. This involved examining the data types of each column, identifying and addressing null values, and detecting and removing duplicate records. Furthermore, the presence of blank values across various columns was investigated, and appropriate measures were taken to handle these instances, ensuring data integrity and reliability for subsequent analysis.

4. Data Cleaning
Building upon the insights gained during the exploratory phase, a comprehensive data cleaning process was implemented. This involved addressing identified issues such as null values and duplicate records. Specifically, rows containing null values in critical geographic coordinates (end_lat and end_lng) were removed to ensure data accuracy. Additionally, columns exhibiting a high frequency of blank values were removed to maintain data integrity and reliability. These steps culminated in a clean and refined dataset, ready for in-depth analysis and the development of valuable insights.

This framework provides a clear and concise overview of the key stages involved in preparing the data for analysis. You can then customize these paragraphs with specific details about your data and the cleaning steps you performed.
