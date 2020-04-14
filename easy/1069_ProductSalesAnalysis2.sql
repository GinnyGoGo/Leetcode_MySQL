-- [Amazon]
-- Mission: Write an SQL query that reports the total quantity sold for every product id.

-- No use for the second table.

SELECT product_id, SUM(quantity) AS total_quantity
FROM Sales
GROUP BY product_id
