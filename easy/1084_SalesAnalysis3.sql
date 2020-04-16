-- [Amazon]
-- Mission: reports the products that were only sold in spring 2019. That is, between 2019-01-01 and 2019-03-31 inclusive.

-- Approach I: CAST
SELECT s.product_id, product_name
FROM Sales s
LEFT JOIN Product p
ON s.product_id = p.product_id
GROUP BY s.product_id
HAVING MIN(sale_date) >= CAST('2019-01-01' AS DATE) AND
       MAX(sale_date) <= CAST('2019-03-31' AS DATE)

-- Approach II: USING
SELECT product_id, product_name
FROM Sales 
JOIN Product 
Using(product_id)
GROUP BY product_id
HAVING MIN(sale_date) >= '2019-01-01' AND MAX(sale_date) <= '2019-03-31' 

-- Approach III: BETWEEN...AND...
SELECT s.product_id, product_name
FROM sales s
JOIN product p
ON s.product_id=p.product_id
GROUP BY s.product_id
HAVING SUM(IF(sale_date BETWEEN '2019-01-01' AND '2019-03-31',0,1))=0