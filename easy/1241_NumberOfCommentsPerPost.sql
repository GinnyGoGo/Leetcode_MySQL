-- [Facebook]

-- Mission: find number of comments per each post

-- Approach I: Subquery
SELECT s.sub_id AS post_id,
(SELECT COUNT(DISTINCT(s1.sub_id)) FROM Submissions s1 WHERE s1.parent_id = s.sub_id) 
AS number_of_comments
FROM Submissions s
WHERE s.parent_id IS null
GROUP BY s.sub_id

-- Approach II: Self-Join
SELECT
    S1.sub_id AS post_id,
    COUNT(DISTINCT S2.sub_id) AS number_of_comments
FROM
    Submissions S1
LEFT JOIN
    Submissions S2
ON
    S1.sub_id = S2.parent_id
WHERE S1.parent_id IS NULL
GROUP BY S1.sub_id
