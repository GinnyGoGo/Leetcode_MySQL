-- Mission: return the list of customers NOT referred by the person with id '2'.

-- Hint: Be careful of the NULL value. 
-- Nulls would not be listed if they are not mentioned in Where.

-- Approach I: IS Null
SELECT name 
FROM customer
WHERE referee_id <> 2 OR referee_id IS NULL 

-- Approach II: IFNULL()
SELECT name 
FROM customer 
WHERE IFNULL(referee_id,0) <> 2;