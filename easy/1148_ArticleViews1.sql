-- [LinkedIn]

-- Mission: find all the authors that viewed at least one of their own articles, sorted in ascending order by their id.

-- Approach I: Distinct + Order by
SELECT DISTINCT author_id AS id FROM Views 
where author_id = viewer_id 
ORDER BY id

-- Approach II: Group by
SELECT author_id AS id FROM Views 
where author_id = viewer_id 
GROUP BY id