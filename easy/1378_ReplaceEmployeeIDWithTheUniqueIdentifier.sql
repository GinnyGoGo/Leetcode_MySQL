-- [Point72]

-- Mission: Write an SQL query to show the unique ID of each user, If a user doesn't have a unique ID replace just show null.

SELECT eu.unique_id,
        e.name
FROM Employees as e
LEFT JOIN EmployeeUNI as eu
ON e.id = eu.id;