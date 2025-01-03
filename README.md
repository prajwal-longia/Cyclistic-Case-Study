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

I chose to work with recent data, starting from December,2023 to November,2024. This data was made available sectioned by months.

The first step on my journey to analyze this case was to download all the files necessary. There are a total of 12 files, downloaded in a CSV(Comma separated Values) format, using a specific company naming convention that made easier to organize these files.

## Process Phase
To work with Cyclistic's data, I had to apply previous knowledge I acquired during the Google Data Analytics Professional Certificate. Google Sheets and RStudio.
This project utilized RStudio as the primary environment for data analysis and visualization. While initial data exploration and loading was conducted using spreadsheet software, RStudio provided the necessary tools for efficient data cleaning, transformation, and statistical analysis, allowing for robust and reproducible results.

1. Data Setup and Combining
 [here](https://github.com/prajwal-longia/Cyclistic-Case-Study/blob/main/Data_Setup_and%20_Combining.R)

The initial step involved consolidating the 12 individual monthly datasets into a single, unified dataframe. This process was crucial for ensuring a comprehensive and consistent analysis across the entire observation period. The resulting dataframe, aptly named bike_rides_df, served as the foundation for all subsequent data analysis and exploration.

2. Data Exploration
 [here](https://github.com/prajwal-longia/Cyclistic-Case-Study/blob/main/Data_Exploration.R)

A thorough exploratory data analysis (EDA) was conducted to gain a deeper understanding of the dataset's characteristics. This involved examining the data types of each column, identifying and addressing null values, and detecting and removing duplicate records. Furthermore, the presence of blank values across various columns was investigated, and appropriate measures were taken to handle these instances, ensuring data integrity and reliability for subsequent analysis.

3. Data Cleaning
 [here](https://github.com/prajwal-longia/Cyclistic-Case-Study/blob/main/Data_Cleaning.R)

Building upon the insights gained during the exploratory phase, a comprehensive data cleaning process was implemented. This involved addressing identified issues such as null values and duplicate records. Specifically, rows containing null values in critical geographic coordinates (end_lat and end_lng) were removed to ensure data accuracy. Additionally, columns exhibiting a high frequency of blank values were removed to maintain data integrity and reliability. These steps culminated in a clean and refined dataset, ready for in-depth analysis and the development of valuable insights.

This framework provides a clear and concise overview of the key stages involved in preparing the data for analysis. You can then customize these paragraphs with specific details about your data and the cleaning steps you performed.

## Analyze & Share
 Code Script [here](https://github.com/prajwal-longia/Cyclistic-Case-Study/blob/main/Data_Analysis.R)
 Images [here](https://github.com/prajwal-longia/Cyclistic-Case-Study/tree/main/Analysis%20Folder)

After cleaning the dataset and getting it ready for analysis, I went into the next step where I used R studio to do the analysis and visualization of the data and getting it ready for sharing.
1) Daily Ride Patterns 

.Ride frequency peaks on Sunday, with Saturday being the second most popular day.
.Average ride duration is highest on weekends (Saturday and Sunday) , with the lowest duration on Wednesday.

2) Trip Duration Distribution

.The mean trip duration (16.63 minutes) being considerably higher than the median (10.13 minutes) indicates a right-skewed distribution.
.The median suggests that most rides are around 10 minutes or shorter, with longer rides pulling the average upwards.

3) Member vs. Casual Rider Behavior 

.Members take more rides overall, but their average ride duration is significantly shorter (almost half) compared to casual riders. This indicates distinct usage patterns: members likely use the service for shorter, more frequent trips, while casual riders use it for longer durations.

4) Bike Preference by User Group

.Both members and casual riders prefer classic bikes. However, casual riders have longer average ride durations on all bike types (classic, electric, and scooters) compared to members.

5. Key Observations:
  [folder](https://github.com/prajwal-longia/Cyclistic-Case-Study/tree/main/Visualization%20Folder)

* Annual members are the backbone of Cyclistic's ridership, accounting for a substantial 64% of the ueser group, while casual riders contribute the remaining 36%.
* Annual membership and casual ridership exhibit strong seasons, peaking in the warmer months (June and September). Although both groups exhibit increased ridership during these months, annual members exhibit more consistent ridership throughout the year than casual riders, who they exhibit more pronounced seasonal variation.
* Casual riders consistently exhibit longer average ride durations across all days of the week compared to annual members.This observation suggests that casual riders tend to utilize the bike-sharing service for longer trips or different purposes compared to annual members.
* Both casual riders and annual members exhibit distinct peak usage hours. Casual riders demonstrate higher usage during the evening hours, while annual members show a more pronounced peak during the morning and evening commute times.
* Among casual riders, one starting point stands out as a clear favorite: "Streeter Dr & Grand Ave." This station sees significantly higher usage than any other, suggesting it's a prime hub for recreational cyclists and a key area to focus on for resource management and potential expansion.

## Act Phase
Converting Casual Riders to Members: Based on observed peak usage at key locations like Streeter Dr & Grand Ave (weekdays 4-6 PM, weekends 1-4 PM), we will implement a targeted conversion strategy. This will involve: (1) On-site promotions during peak hours offering trial memberships and demonstrating the cost benefits of membership for regular riders; (2) On-bike messaging (QR codes) linking to mobile-friendly signup pages with exclusive online offers; (3) Digital outreach via the app and email, using personalized messaging based on rider behavior; and (4) Feedback collection through surveys and in-person interactions to continuously improve our conversion efforts. These combined efforts aim to provide a seamless and compelling pathway for casual riders to become valued members.

The analysis revealed clear distinctions between casual riders and members. Casual riders primarily use bikes for leisure during weekends and afternoons, while members use bikes for commuting during weekdays. These insights highlight the need for targeted marketing strategies that appeal to casual riders' motivations and usage patterns.
