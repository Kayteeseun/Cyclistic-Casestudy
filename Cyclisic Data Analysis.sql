		SELECT count(ride_id) as total_riders FROM Yearly_cyclistic
		

--count of riders by member_casual
 select  member_casual,count(ride_id) as total_riders
 from Yearly_cyclistic
 group by member_casual
 order by total_riders DESC
 ---Total users of difff rideable bikes
 SELECT  rideable_type, count(ride_id) AS total_users
 FROM Yearly_cyclistic
 GROUP BY  rideable_type
 ORDER BY total_users DESC
 --Total riders by month
 select  month, count(ride_id) as total_riders
 from Yearly_cyclistic
 GROUP BY  month
 ORDER BY  total_riders desc
 select distinct month from Yearly_cyclistic

			 -- calculating the total of user type by day of week

        SELECT  
        day_of_week,
        SUM(CASE WHEN member_casual = 'member' THEN 1 ELSE 0 END) AS MemberTrips,
        SUM(CASE WHEN member_casual = 'casual' THEN 1 ELSE 0 END) AS CasualTrips,
		COUNT(DISTINCT ride_id) AS TotalTrips
       FROM 
       Yearly_cyclistic
       GROUP BY 
        day_of_week
        ORDER BY 
        totaltrips DESC 

		---Total users of difff rideable bikes by month
		SELECT  
        month,
        SUM(CASE WHEN rideable_type = 'classic_bike' THEN 1 ELSE 0 END) AS classic_bike,
        SUM(CASE WHEN rideable_type = 'electric_bike' THEN 1 ELSE 0 END) AS electric_bike,
		SUM(CASE WHEN rideable_type = 'docked_bike' THEN 1 ELSE 0 END) AS docked_bike,
		COUNT(DISTINCT ride_id) AS total_users
         FROM 
       Yearly_cyclistic
       GROUP BY 
        month
        ORDER BY 
        total_users DESC 

		---annual member and casual rider totals per start station
		SELECT 
        top 100 start_station_name,
        SUM(
            CASE WHEN member_casual = 'member'  THEN 1 ELSE 0 END
            ) AS member,
        SUM(
            CASE WHEN member_casual = 'casual'  THEN 1 ELSE 0 END
            ) AS casual			
          FROM 
        Yearly_cyclistic
         GROUP BY 
        start_station_name
        ORDER BY 
        member DESC
		SELECT 
        top 100 end_station_name,
        SUM(
            CASE WHEN member_casual = 'member'  THEN 1 ELSE 0 END
            ) AS member,
        SUM(
            CASE WHEN member_casual = 'casual'  THEN 1 ELSE 0 END
            ) AS casual			
          FROM 
        Yearly_cyclistic
         GROUP BY 
        end_station_name
        ORDER BY 
        member DESC
		---annual member and casual rider totals per end station
		
								SELECT 
        top 100 start_station_name,
        SUM(
            CASE WHEN member_casual = 'member'  THEN 1 ELSE 0 END
            ) AS member,
        SUM(
            CASE WHEN member_casual = 'casual'  THEN 1 ELSE 0 END
            ) AS casual			
          FROM 
        Yearly_cyclistic
         GROUP BY 
        start_station_name
        ORDER BY 
        casual DESC
		SELECT 
        top 100 end_station_name,
        SUM(
            CASE WHEN member_casual = 'member'  THEN 1 ELSE 0 END
            ) AS member,
        SUM(
            CASE WHEN member_casual = 'casual'  THEN 1 ELSE 0 END
            ) AS casual			
          FROM 
        Yearly_cyclistic
         GROUP BY 
       end_station_name
        ORDER BY 
        casual DESC
		--totalride of usertype by month
								 SELECT distinct month,
       case when month in ('January', 'February', 'December')
	    then 'Winter'
		when month in ('March', 'April', 'May')
		then 'Spring'
			when  month in ('June', 'July', 'August')
			then 'Summer'
					when month in ('September' , 'October' , 'November')
					 then 'Autum'
					 else 'Unknown'
						end as season,
						 SUM(
            CASE WHEN member_casual = 'member' THEN 1 ELSE 0 END
            ) AS member,
        SUM(
            CASE WHEN member_casual = 'casual'  THEN 1 ELSE 0 END
            ) AS casual,
			count(ride_id) as total_rides
									from Yearly_cyclistic
             group by month
             order by total_rides desc

        --total rides of user type bike by season
											SELECT distinct month,
 case when month in ('January', 'February', 'December')
	then 'Winter'
		when month in ('March', 'April', 'May')
		then 'Spring'
			when  month in ('June', 'July', 'August')
			then 'Summer'
					when month in ('September' , 'October' , 'November')
					 then 'Autum'
					 else 'Unknown'
						end as season,
						 SUM(
            CASE WHEN rideable_type = 'classic_bike'  THEN 1 ELSE 0 END
            ) AS classic_bike,
        SUM(
            CASE WHEN rideable_type = 'electric_bike' THEN 1 ELSE 0 END
            ) AS electric_bike,
			 SUM(
            CASE WHEN rideable_type = 'docked_bike'  THEN 1 ELSE 0 END
            ) AS docked_bike,
			count(ride_id) as total_rides
			
						from Yearly_cyclistic
             group by month
            order by total_rides desc

--Total rideable type of each users
          SELECT  
        member_casual,
        SUM(CASE WHEN rideable_type = 'classic_bike' THEN 1 ELSE 0 END) AS classic_bike,
        SUM(CASE WHEN rideable_type = 'electric_bike' THEN 1 ELSE 0 END) AS electric_bike,
		SUM(CASE WHEN rideable_type = 'docked_bike' THEN 1 ELSE 0 END) AS docked_bike,
		COUNT(DISTINCT ride_id) AS total_users
        FROM 
       Yearly_cyclistic
         GROUP BY 
        member_casual
        ORDER BY 
        total_users DESC 
		
		SELECT  
        rideable_type,
		SUM(CASE WHEN member_casual = 'member' THEN 1 ELSE 0 END) AS MemberTrips,
        SUM(CASE WHEN member_casual = 'casual' THEN 1 ELSE 0 END) AS CasualTrips,
		COUNT(DISTINCT ride_id) AS total_users
FROM 
       Yearly_cyclistic
GROUP BY 
        rideable_type
ORDER BY 
        total_users DESC 
		
		select * from Yearly_cyclistic
 --Avg of total duration
		SELECT ROUND(avg(duration),0) AS avg_ride_duration
FROM Yearly_cyclistic
--Avg duration of overall and member casual

       select
				            (
							 select avg(duration)
				from Yearly_cyclistic) as avgaduration,
				(select
				avg(duration)
				from Yearly_cyclistic
				where member_casual ='member') as avgmemberduration,
				(select avg(duration)
				from Yearly_cyclistic
				where member_casual='casual')as avgcasualduration
--Avg duration of casualriders in month
	SELECT COUNT(ride_id) AS ride_count,
AVG(duration) AS avg_ride_duration,
 month
FROM Yearly_cyclistic
WHERE member_casual IN ('casual')
GROUP BY month
ORDER BY avg_ride_duration;
	SELECT COUNT(ride_id) AS ride_count,
AVG(duration) AS avg_ride_duration
FROM Yearly_cyclistic
ORDER BY avg_ride_duration;
--Avg duration of annualmembers in month
	SELECT COUNT(ride_id) AS ride_count,
AVG(duration) AS avg_ride_duration,
 month
FROM Yearly_cyclistic
WHERE member_casual IN ('member')
GROUP BY month
ORDER BY avg_ride_duration;
--Avg duration of totalmembercasual and day of week
SELECT day_of_week,
sum(CASE WHEN member_casual = 'member' THEN 1 ELSE 0 END) member,
sum(CASE WHEN member_casual = 'casual' THEN 1 else 0 end) casual,
AVG(duration) AS avg_ride_duration
FROM Yearly_cyclistic
GROUP BY day_of_week
ORDER BY avg_ride_duration;
--Avg duration of totalriders in week
SELECT COUNT(ride_id) AS ride_count,
AVG(duration) AS avg_ride_duration,
 day_of_week
FROM Yearly_cyclistic
WHERE member_casual IN ('casual')
GROUP BY day_of_week
ORDER BY avg_ride_duration;
--Avg casual duration in a week
		SELECT day_of_week,
AVG(duration) AS member_duration
FROM Yearly_cyclistic
WHERE member_casual IN ('member')
GROUP BY day_of_week 
ORDER BY member_duration 
--Avg member duration in a week
	SELECT day_of_week,
AVG(duration) AS member_duration
FROM Yearly_cyclistic
WHERE member_casual IN ('casual')
GROUP BY day_of_week 
ORDER BY member_duration 
--top station name by day of week of avgduration
SELECT TOP 10 start_station_name,
end_station_name,day_of_week,
COUNT(ride_id) AS ride_count,
AVG(duration) AS avg_ride_duration
FROM Yearly_cyclistic
GROUP BY start_station_name, end_station_name,day_of_week
ORDER BY ride_count DESC;
--Top station point and end station point by month 
SELECT TOP 10 start_station_name,
end_station_name,month,
COUNT(ride_id) AS ride_count,
AVG(duration) AS avg_ride_duration
FROM Yearly_cyclistic
GROUP BY start_station_name, end_station_name,month
ORDER BY ride_count DESC;
--Top station point and end station point by month  of member
SELECT TOP 10 start_station_name,
end_station_name,month,
COUNT(ride_id) AS ride_count,
AVG(duration) AS avg_ride_duration
FROM Yearly_cyclistic
WHERE member_casual IN ('member')
GROUP BY start_station_name, end_station_name,month
ORDER BY ride_count DESC;
--Top station point and end station point by month  of member
SELECT TOP 10 start_station_name,
end_station_name,month,
COUNT(ride_id) AS ride_count,
AVG(duration) AS avg_ride_duration
FROM Yearly_cyclistic
WHERE member_casual IN ('casual')
GROUP BY start_station_name, end_station_name,month
ORDER BY ride_count DESC;
---Day of week and rideable type of times of day
				Select  distinct day_of_week, 
	case when cast(started_at as time) >='06:00' and cast(started_at as time) <'12:00' then 'Morning'
		when cast(started_at as time) >='12:00' and cast( started_at as time) <'17:00' then 'Afteroon'
			 when cast(started_at as time) >='17:00' and cast( started_at as time) <'20:00' then 'Evening'
				else 'Night'
					End as Time_of_day,
												 SUM(
            CASE WHEN rideable_type = 'classic_bike'  THEN 1 ELSE 0 END
            ) AS classic_bike,
        SUM(
            CASE WHEN rideable_type = 'electric_bike' THEN 1 ELSE 0 END
            ) AS electric_bike,
			 SUM(
            CASE WHEN rideable_type = 'docked_bike'  THEN 1 ELSE 0 END
            ) AS docked_bike,
				 count(ride_id) as number_of_riders
						from Yearly_cyclistic
						group by day_of_week,
		 case when cast(started_at as time) >='06:00' and cast(started_at as time) <'12:00' then 'Morning'
		when cast(started_at as time) >='12:00' and cast( started_at as time) <'17:00' then 'Afteroon'
			 when cast(started_at as time) >='17:00' and cast( started_at as time) <'20:00' then 'Evening'
				else 'Night'
					End 
					order by day_of_week, Time_of_day
					Select  distinct day_of_week, 
	case when cast(started_at as time) >='06:00' and cast(started_at as time) <'12:00' then 'Morning'
		when cast(started_at as time) >='12:00' and cast( started_at as time) <'17:00' then 'Afteroon'
			 when cast(started_at as time) >='17:00' and cast( started_at as time) <'20:00' then 'Evening'
				else 'Night'
					End as Time_of_day,
												 SUM(
            CASE WHEN member_casual = 'member'  THEN 1 ELSE 0 END
            ) AS member,
        SUM(
            CASE WHEN member_casual = 'casual' THEN 1 ELSE 0 END
            ) AS casual,
				 count(ride_id) as number_of_riders
						from Yearly_cyclistic
						group by day_of_week,
		 case when cast(started_at as time) >='06:00' and cast(started_at as time) <'12:00' then 'Morning'
		when cast(started_at as time) >='12:00' and cast( started_at as time) <'17:00' then 'Afteroon'
			 when cast(started_at as time) >='17:00' and cast( started_at as time) <'20:00' then 'Evening'
				else 'Night'
					End 
					order by day_of_week, Time_of_day
					---Month rideable type of times of day
						Select  distinct month, 
	case when cast(started_at as time) >='06:00' and cast(started_at as time) <'12:00' then 'Morning'
		when cast(started_at as time) >='12:00' and cast( started_at as time) <'17:00' then 'Afteroon'
			 when cast(started_at as time) >='17:00' and cast( started_at as time) <'20:00' then 'Evening'
				else 'Night'
					End as Time_of_day,
												 SUM(
            CASE WHEN rideable_type = 'classic_bike'  THEN 1 ELSE 0 END
            ) AS classic_bike,
        SUM(
            CASE WHEN rideable_type = 'electric_bike' THEN 1 ELSE 0 END
            ) AS electric_bike,
			 SUM(
            CASE WHEN rideable_type = 'docked_bike'  THEN 1 ELSE 0 END
            ) AS docked_bike,
				 count(ride_id) as number_of_riders

						from Yearly_cyclistic
						group by month,
		 case when cast(started_at as time) >='06:00' and cast(started_at as time) <'12:00' then 'Morning'
		when cast(started_at as time) >='12:00' and cast( started_at as time) <'17:00' then 'Afteroon'
			 when cast(started_at as time) >='17:00' and cast( started_at as time) <'20:00' then 'Evening'
				else 'Night'
					End 
					order by month, Time_of_day
--Top Start and End station
				
			SELECT 
        top 10 start_station_name,end_station_name,
        SUM(
            CASE WHEN member_casual = 'member'  THEN 1 ELSE 0 END
            ) AS member,
        SUM(
            CASE WHEN member_casual = 'casual'  THEN 1 ELSE 0 END
            ) AS casual			
          FROM 
        Yearly_cyclistic
         GROUP BY 
        start_station_name,end_station_name
        ORDER BY 
        casual DESC
		SELECT 
        top 10 start_station_name,end_station_name,
        SUM(
            CASE WHEN member_casual = 'member'  THEN 1 ELSE 0 END
            ) AS member,
        SUM(
            CASE WHEN member_casual = 'casual'  THEN 1 ELSE 0 END
            ) AS casual
			          FROM 
        Yearly_cyclistic
         GROUP BY 
        start_station_name,end_station_name
        ORDER BY 
        member DESC

		

		select * from Yearly_cyclistic
		where member_casual ='member' and rideable_type='electric_bike'

		SELECT 
        member_casual,
        MAX(duration) AS ride_length_MAX
FROM 
        Yearly_cyclistic
GROUP BY 
        member_casual
ORDER BY 
        ride_length_MAX DESC