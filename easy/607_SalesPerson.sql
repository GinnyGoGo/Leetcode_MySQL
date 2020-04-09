-- Mission: Given three tables: salesperson (sales id, name), company(company id, name), orders (sales id, company id).
-- output all the names in the table salesperson, who didn’t have sales to company 'RED'.

-- Hint: You need to query who sold to company 'RED' first, 
-- then output the sales person who is not in the first query result.

-- Approach I: Straight forward solution
select name From salesperson where sales_id NOT IN 
    (
        select sales_id from orders where com_id =
            (
                select com_id From company where name = "RED"
            )
    );


-- Approach II: Join
select salesperson.name
from orders o 
/* The first inner join creates a view for just 'RED' orders */
join company c on 
    (o.com_id = c.com_id and c.name = 'RED')
/* The right join ensures all salespersons are included (even those who do not have RED orders) */
right join salesperson on salesperson.sales_id = o.sales_id
/* The WHERE IS NULL gives salespersons who did not have any RED orders due to the right join */
where o.sales_id is null

-- Approach III:(Official Solution)
-- Using Not In & Left Join
SELECT
    s.name
FROM
    salesperson s
WHERE
    s.sales_id NOT IN (SELECT
            o.sales_id
        FROM
            orders o
                LEFT JOIN
            company c ON o.com_id = c.com_id
        WHERE
            c.name = 'RED')
;