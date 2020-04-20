-- [Point72]

-- Mission: report the distance travelled by each user.
-- Return the result table ordered by travelled_distance in descending order, 
-- if two or more users travelled the same distance, order them by their name in ascending order.

select name, sum(ifnull(distance,0)) as travelled_distance
from rides r
right join users u
on r.user_id = u.id
group by name
order by 2 desc,1 asc;