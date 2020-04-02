-- Approach I: Group By & Having & Count()
SELECT class
FROM courses
GROUP BY class
HAVING COUNT(DISTINCT student) >= 5 
/* Distinct. Get a result containing a unique list of students and classes, then count. */
;

-- Approach II: Group by & Sub-query
SELECT
    class
FROM
    (SELECT
        class, COUNT(DISTINCT student) AS num
    FROM
        courses
    GROUP BY class) AS temp_table
WHERE
    num >= 5
;