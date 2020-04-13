-- Mission: find the biggest number, which only appears once

-- Find the appearance time = 1
-- Sort and find the biggest
-- Output Null if none

SELECT
    MAX(num) AS num
FROM
    (SELECT
        num
    FROM
        my_numbers
    GROUP BY num
    HAVING COUNT(num) = 1) AS t /* ? */
;
