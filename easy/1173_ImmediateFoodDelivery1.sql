--[Doordash]
-- Mission: find the percentage of immediate orders in the table, rounded to 2 decimal places.

-- Approach 1: formula
select round(100 * sum(order_date = customer_pref_delivery_date) / count(*), 2) 
    as immediate_percentage 
from Delivery;

-- Approach 2: set condition in avg()
-- return 1 if it's true and 0 if false
SELECT ROUND(100*AVG(order_date = customer_pref_delivery_date), 2) AS immediate_percentage
FROM Delivery;

