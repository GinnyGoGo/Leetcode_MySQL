-- [Facebook]

-- Mission: find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. 
-- A user was active on some day if he/she made at least one activity on that day.

-- count(distinct ...)
-- datediff()
select activity_date as day, count(distinct user_id) as active_users 
from Activity
where datediff('2019-07-27', activity_date) <30
group by activity_date