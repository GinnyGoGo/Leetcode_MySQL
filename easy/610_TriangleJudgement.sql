-- Case...When... 

-- Mission: writing a query to judge whether these three sides can form a triangle,
-- assuming table triangle holds the length of the three sides x, y and z.

-- Approach: Case...When... 
SELECT 
    x,
    y,
    z,
    CASE /* ! */
        WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
        ELSE 'No'
    END AS 'triangle'
FROM
    triangle
;

-- Approach II: IF
SELECT x, y, z, 
    if(x > 0 and y > 0 and z > 0 and x + y > z and x + z > y and z + y > x, "Yes", "No") 
    as triangle 
from triangle