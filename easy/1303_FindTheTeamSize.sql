-- [Amazon]
-- Mission: find the team size of each of the employees.

-- Approach II: Left Join
-- Should think ahead
select a.employee_id, team_size
From Employee as a
left join (select employee_id, team_id, count(employee_id) as team_size
from Employee 
Group by team_id) as k
Using (team_id)

-- * Approach II: Window function
-- Window function is to do aggregation between rows instead of across columns. 
-- With doing a window function you avoid the need of doing a sub-query and a group by as well, so the code's cleaner, shorter and faster.
select employee_id, count(*) over(partition by team_id) as team_size
from employee