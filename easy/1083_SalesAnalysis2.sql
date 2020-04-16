-- [Amazon]
-- Mission: Reports the buyers who have bought S8 but not iPhone. 

-- Approach I: CASE...WHEN 
SELECT s.buyer_id
FROM Sales AS s INNER JOIN Product AS p
ON s.product_id = p.product_id
GROUP BY s.buyer_id
HAVING SUM(CASE WHEN p.product_name = 'S8' THEN 1 ELSE 0 END) > 0
AND SUM(CASE WHEN p.product_name = 'iPhone' THEN 1 ELSE 0 END) = 0;

-- Approach II: without CASE
SELECT b.buyer_id
FROM Product AS a
JOIN Sales AS b
ON a.product_id = b.product_id 
GROUP BY b.buyer_id 
HAVING SUM(a.product_name = 'S8') > 0 and SUM(a.product_name = 'iPhone') = 0;

-- Approach III: USING
SELECT buyer_id
FROM Sales JOIN Product USING(product_id)
GROUP BY buyer_id
HAVING SUM(CASE WHEN product_name = 'S8' THEN 1 ELSE 0 END) > 0
AND SUM(CASE WHEN product_name = 'iPhone' THEN 1 ELSE 0 END) = 0;

-- Approach IV: DISTINCT
-- Since the problem said 'This table has no primary key, it can have repeated rows.', 
-- so if someone bought two S8, he will show in the result twice
select distinct buyer_id
from sales join product using(product_id)
where product_name = 'S8' 
and buyer_id not in (select distinct buyer_id
                    from sales join product using(product_id)
                    where product_name = 'iPhone' )