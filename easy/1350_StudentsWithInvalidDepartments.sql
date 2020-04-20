-- [Amazon]
-- Mission: find the id and the name of all students 
-- who are enrolled in departments that no longer exists.

-- Approach I: Subquery
SELECT id, name FROM Students
WHERE department_id not in (SELECT id from Departments)

-- Approach II: Outer Join, Null
SELECT s.id, s.name
FROM Departments d
RIGHT JOIN Students s
ON d.id = s.department_id
WHERE d.id IS NULL