-- [Facebook]

-- Mission: find each query_name, and calculate the quality and poor_query_percentage.
-- quality = The average of the ratio between query rating and its position.
-- Poor query percentage = The percentage of all queries with rating less than 3.

-- Approach I:
SELECT query_name 
,  ROUND(AVG(rating*100 / position), 2)/100 AS quality
,  ROUND(AVG(case 
             when rating < 3 then 1 
             else 0 end
            )*100, 2) as poor_query_percentage
FROM Queries
GROUP BY query_name

-- Approach II:
SELECT 
	query_name,
	ROUND(AVG(rating / position), 2) AS quality,
	ROUND(AVG(rating < 3) * 100, 2) AS poor_query_percentage 
FROM 
	Queries
GROUP BY 
	query_name