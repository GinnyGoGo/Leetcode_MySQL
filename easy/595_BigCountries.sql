-- OR / Union

-- Approach I: WHERE & OR
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 25000000
;

-- Approach II: WHERE & UNION (Faster)
-- UNION can be a bit faster because each select can use it's own index, 
-- while OR can use index for area and full-scan for population (or vise versa).
SELECT name, population, area
FROM world
WHERE area > 3000000

UNION

SELECT name, population, area
FROM world
WHERE population > 25000000
;