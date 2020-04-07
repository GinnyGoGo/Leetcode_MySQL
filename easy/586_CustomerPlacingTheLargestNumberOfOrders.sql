-- [Twitter]

-- Count, order, find the customer with the most one (first record)

-- Mission: Find the customer who has placed the largest number of orders.

-- Appoach I:
select customer_number from orders
group by customer_number
order by count(*) desc 
limit 1;

-- Approach II: (faster)
SELECT customer_number FROM orders 
GROUP BY customer_number 
HAVING COUNT(*) = (SELECT MAX(counts) 
                   FROM (SELECT COUNT(*) as counts FROM orders
                         GROUP BY customer_number) as sub);

