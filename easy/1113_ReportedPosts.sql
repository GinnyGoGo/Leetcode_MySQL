-- [Facebook]

-- Mission: reports the number of posts reported yesterday for each report reason. Assume today is 2019-07-05.

-- No need to filter extra is not null. When action = 'report', extra is guaranteed not null.
-- No need to filter count > 0. If a group exists, it must have at least one row.

-- Approach I: 
SELECT extra AS report_reason, 
    COUNT(DISTINCT post_id) AS report_count
FROM Actions
WHERE action = 'report' AND action_date = '2019-07-04'
GROUP BY extra

-- Approach II: DATEDIFF
SELECT DISTINCT 
    extra AS report_reason, 
    COUNT(DISTINCT post_id) AS report_count
FROM Actions
WHERE action='report' AND DATEDIFF('2019-07-05', action_date) = 1
GROUP BY extra;
