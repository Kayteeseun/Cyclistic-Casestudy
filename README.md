     Cyclitic bike-share analysis

![2023-06-13](https://github.com/Kayteeseun/cyclistic-Casestudy/assets/132163855/9dd9f17b-d5ea-4f39-a820-3fa9e381b4a3)

INTRODUCTION

Welcome to the Cyclitic bike-share analysis case study! This case study is part of my course challenge in Google Data Analytics Certificate. In this capstone project, I performed many real-world tasks of a junior data analyst. In order to answer the key business questions, I followed the steps of the data analysis process I learnt on coursera: ask, prepare, process, analyze, share, and act. Using Microsoft SQL server and PowerBI to solve the business task.

About the company

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are retracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.
Until now, Cyclitis's marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred of as casual riders. Customers who purchase annual memberships are Cyclitic members.

Characters and teams;

● Cyclitic: A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclitic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can't use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclitic users are more likely to ride for leisure, but about 30% use them to commute to work each day.

● Lily Moreno: The director of marketing and manager. Moreno is responsible for the development of campaigns and initiatives to promote the bike-share program. These may include email, social media, and other channels.

● Cyclitic marketing analytics team: A team of data analysts who are responsible for collecting, analyzing, and reporting data that helps guide Cyclitic marketing strategy. I assumed have joined this team six months ago and have been busy learning about Cyclitis's mission and business goals - as well as how I, as a junior data analyst, can help Cyclitic achieve them.

● Cyclitic executive team: The notoriously detail-oriented executive team will decide whether to approve the recommended marketing program.

OBSERVATIONS

Cyclistic's finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics.

Ask

Business Task;

1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclitic use digital media to influence casual riders to become members?

PREPARE

This is public data that I used to explore how different customer types are using Cyclitic bikes.
Download  the  previous  12  months of  Cyclistic  trip  data here. https://divvy-tripdata.s3.amazonaws.com/index.html
The data has been made available by Motivate International Inc. under  this [license](https://ride.divvybikes.com/data-license-agreement).)

The tables contain the following columns:

ride_id : unique id of each ride trip

rideable_type : type of bicycle used: classic, docked or electric

started_at : date and time of the start of the trip

ended_at : date and time of the end of the trip

start_station_name : start station name

start_station_id : start station id

end_station_name : end station name

end_station_id : end station id

start_lat : latitude of the starting point

start_lng : longitude of the starting point

end_lat : latitude of the ending point

end_lng : longitude of the ending point

member_casual : type of user, either casual or member


Bias or credibility in this data

The datasets have a different name because Cyclitic is a fictional company. For the purposes of this case study, the datasets are appropriate and will enable me to answer the business questions.

The data-privacy issues prohibit me from using riders' personally identifiable information. This means that I won't be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclitic service area or if they have purchased multiple single passes.

PROCESS

Data Preparation for Analysis

Here is where I process the preparation of raw data so that it is suitable for further processing and analysis. The data consist of 12csv files, I used 10 and added 4 new columns to carry my analysis.

Key steps; Link to the Data cleaning is here.

· Combining of each month data to one year table and removed irrelevant data.    

· Removed the duplicates data

· Checked out any empty spaces in the data

· Removed incomplete values, i deleted the null values in start and end station name.

· Created new columns to carry out analysis

· Checked where ride_id values is not equal to 16 characters.

The link to the Data cleaning is here.

ANALYZE AND SHARE;

Now that the data is cleaned and documented, I started doing analysis to make sense out of the data to solve problems and support the business goals. The total riders I got after the cleaning is 4,369,297. The query of link can be found here 


As said earlier Cyclistic has 2 different member, I did calculation to know the which customers has the highest riders.

Total rider of user type

Annual member has the highest rides correlated to casual riders

Annual member has about 2,611,153 riders of 59.76% while casual riders have 1,758,144 of 40.28% riders. Which means annual member rents the bike to commute to work daily.

![2023-06-12 (9)](https://github.com/Kayteeseun/cyclistic-Casestudy/assets/132163855/134a1beb-99ea-4d9d-b529-072b1a46a0df)

Rideable bikes and user type

Annual member and casual member used bikes differently, annual member mostly used the classic bike and electric bike but surprisingly annual member didn't used the docked bike at all, casual riders used the 3 bikes but only few casual riders used the docked ride.

![2023-06-12 (11)](https://github.com/Kayteeseun/cyclistic-Casestudy/assets/132163855/56606d57-5911-4ab0-ba2b-d70a627cbfb8)


Total rideable bikes

Classic bikes have the top users out of the 3 bikes follow by electric bikes. And docked has the lower rides of 4%.

![2023-06-12 (12)](https://github.com/Kayteeseun/cyclistic-Casestudy/assets/132163855/fee1a139-e8e6-4ff6-aa2e-3d33a39e4386)

Day of week rideable bikes
Saturday is the top and the busiest day out of the 7 days in week followed by Thursday and most users used the classic bikes during weekdays and weekend.


![2023-06-12 (13)](https://github.com/Kayteeseun/cyclistic-Casestudy/assets/132163855/87c94f3d-fe7a-4294-b902-d42c55b008e0)

Day_of_week Avg duration
The average duration of rides is -17 minutes. Weekends have the highest number of ride-length, while the weekdays have lesser ride length duration.

![2023-06-12 (19)](https://github.com/Kayteeseun/cyclistic-Casestudy/assets/132163855/63065412-ef21-4655-8145-7de2b5dcb2ae)



Time of the day
Obviously, this means that member riders use the bike rentals to work in the day while the casual riders ride for leisure purposes and not for commuting.

![2023-06-12 (14)](https://github.com/Kayteeseun/cyclistic-Casestudy/assets/132163855/ac96c3e2-92e6-4170-96ad-92076df9f9af)


Total bikes by season
Both users mostly ride during the summer season, which we all know the climate shift more to hotter temperature, and winter has the lowest riders because riding in the cold can affect the bikes as much as the person riding it. In cold condition, tire may be also sleet, snow, ice or even new cracks or holes in the road which is not safe.

![2023-06-12 (22)](https://github.com/Kayteeseun/cyclistic-Casestudy/assets/132163855/ad0247dc-4708-4564-857b-b8ece28402dd)


Ride by month
June, July and August has the most riders which is defined as summer season, means riding in summer is great with less rainfall and less slippery road. While December, February and January has the lowest riders that's is winter period, it is no doubt the best time to ride.


![2023-06-12 (16)](https://github.com/Kayteeseun/cyclistic-Casestudy/assets/132163855/3a1c7a6e-ae1a-43b5-9481-83f3eaaf2d9c)


Start_station_name and End_station_name

I did calculation on stations park to know the most park each users used, casual riders mostly rent their bike and drop it at the same station while annual riders used theirs differently , probably because they used their bike commuting, so it is possible they rent the bike any park and drop it at any station close to their work and unlike.


![2023-06-12 (3)](https://github.com/Kayteeseun/cyclistic-Casestudy/assets/132163855/fe95ca54-f4c5-421f-acff-64ad227eca44)
![2023-06-12 (6)](https://github.com/Kayteeseun/cyclistic-Casestudy/assets/132163855/90acb48b-16f7-4db4-a1d6-a782d9fc3b93)


POWERBI REPORT
 
 ![2023-06-12 (21)](https://github.com/Kayteeseun/cyclistic-Casestudy/assets/132163855/02dba6d6-5bb5-4284-9573-8ffe05271aff)

ACT PHASE

RECOMMENDATIONS;

 I would say annual member is the key future because they mostly play part of the role to the company, they used cyclistic rides to work daily and they are the top riders of the classic and electric bikes.
 
The overall average duration of riders is(-17minutes) average ride duration of casual is(-23 minutes)and member is (-12 minutes). Causal duration is longer than that of member, this is because member only ride to work.

Cyclist can also motivate member and casual to have ride more in the evening ,cycling in the evening seems to be more slightly better for performance. Cyclistic can motivate or advertise to improve users to make used of it in evening for fun.
Casual riders start and end their trips near the city parks and tourist/recreational attractions while annual member end to start and end their trips in the city, near office and apartment buildings.

Based on the analysis casual riders monthly trips durations , the best time to also launch marketing campaign is between April and may .
Cyclistic can also improve their advertise on docked_bikes since it has the lowest users and annual  member didn't have any records of it.

Lastly, I would recommend cyclistic to do some marketing activities, like some advertisement, they should channel right on promotions and discounts especially to the casual riders to make them more often their customers and also the annual member.

Thanks for checking out my Capstone Project.













