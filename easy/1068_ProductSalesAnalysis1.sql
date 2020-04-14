-- [Amazon]
-- Mission: reports all product names of the products in the Sales table along with their selling year and price.


-- The over all performance improves drastically using inner join with distinct keyword.

-- Approach 1: Subquery
SELECT p.product_name, d.year, d.price 
FROM Product as p 
JOIN 
    (SELECT DISTINCT product_id, year, price 
    FROM Sales) as d 
ON p.product_id = d.product_id

-- Approach II: Inner Join
select p.product_name, s.year, s.price
from sales as s 
inner join product as p
on p.product_id = s.product_id