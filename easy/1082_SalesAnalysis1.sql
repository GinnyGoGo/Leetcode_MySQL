-- [Amazon]
-- Mission: reports the best seller by total sales price, If there is a tie, report them all.

-- Find the max value first, then using HAVING to find the id

SELECT seller_id
FROM Sales
GROUP BY seller_id
HAVING SUM(price) = (SELECT SUM(price)
					 FROM Sales
                     GROUP BY seller_id
                     ORDER BY 1 DESC
                     LIMIT 1 )