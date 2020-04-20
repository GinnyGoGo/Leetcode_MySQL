-- [Point72]

-- Mission: find the type of weather in each country for November 2019.

-- Case...when...then...when...then...else...end
-- [day] between ... and ...
select country_name,
weather_type = case when AVG(weather_state*1.0)<=15.0 then 'Cold'
					when AVG(weather_state*1.0)>=25.0 then 'Hot'
					else 'Warm'
			   end
from Countries c 
inner join Weather  w
on c.country_id  = w.country_id
where [day] between '2019-11-01' and '2019-11-30'
/* WHERE LEFT(weather.day,7)='2019-11' */
group by country_name