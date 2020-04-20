-- [Amazon]
-- reformat the table such that there is a department id column and a revenue column for each month.

-- Since multiple rows in the input can have the same id, 
-- the GROUP BY needs an aggregate function (such as MAX or SUM) to combine the rows for an id. 
-- Since each id and month pair can only have 1 revenue, it doesn't matter whether we use MAX or SUM for combining rows


-- Approach 1: SUM
select id, 
	sum(case when month = 'jan' then revenue else null end) as Jan_Revenue,
	sum(case when month = 'feb' then revenue else null end) as Feb_Revenue,
	sum(case when month = 'mar' then revenue else null end) as Mar_Revenue,
	sum(case when month = 'apr' then revenue else null end) as Apr_Revenue,
	sum(case when month = 'may' then revenue else null end) as May_Revenue,
	sum(case when month = 'jun' then revenue else null end) as Jun_Revenue,
	sum(case when month = 'jul' then revenue else null end) as Jul_Revenue,
	sum(case when month = 'aug' then revenue else null end) as Aug_Revenue,
	sum(case when month = 'sep' then revenue else null end) as Sep_Revenue,
	sum(case when month = 'oct' then revenue else null end) as Oct_Revenue,
	sum(case when month = 'nov' then revenue else null end) as Nov_Revenue,
	sum(case when month = 'dec' then revenue else null end) as Dec_Revenue
from department
group by id
order by id


-- Approach 2: Max
SELECT
    id,
    MAX(IF(month = 'Jan', revenue, null)) AS Jan_Revenue,
    MAX(IF(month = 'Feb', revenue, null)) AS Feb_Revenue,
    MAX(IF(month = 'Mar', revenue, null)) AS Mar_Revenue,
    MAX(IF(month = 'Apr', revenue, null)) AS Apr_Revenue,
    MAX(IF(month = 'May', revenue, null)) AS May_Revenue,
    MAX(IF(month = 'Jun', revenue, null)) AS Jun_Revenue,
    MAX(IF(month = 'Jul', revenue, null)) AS Jul_Revenue,
    MAX(IF(month = 'Aug', revenue, null)) AS Aug_Revenue,
    MAX(IF(month = 'Sep', revenue, null)) AS Sep_Revenue,
    MAX(IF(month = 'Oct', revenue, null)) AS Oct_Revenue,
    MAX(IF(month = 'Nov', revenue, null)) AS Nov_Revenue,
    MAX(IF(month = 'Dec', revenue, null)) AS Dec_Revenue
FROM Department
GROUP BY id