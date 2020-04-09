-- Using ABS() and MIN() functions 

-- Mission: Write a query to find the shortest distance between two points in these points.

-- One trick here is to add the condition in the join to avoid calculating the distance between a point with itself.

-- Approach I: 
SELECT
    MIN(ABS(p1.x - p2.x)) AS shortest
FROM
    point p1
        JOIN
    point p2 ON p1.x != p2.x
;

-- Approach II: 
SELECT min(abs(p1.x - p2.x)) as shortest
FROM point p1, point p2
where p1.x <> p2.x;