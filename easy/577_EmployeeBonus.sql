-- Inner Join & IS NULL
-- Mission: Select all employee's name and bonus whose bonus is < 1000.

-- Hint:
-- If the EmpId in table Employee has no match in table Bonus, 
-- * we consider that the corresponding bonus is null and null is smaller than 1000.

-- Inner join is the default join, 
-- we can solve the mismatching problem by using outer join.

SELECT name, bonus
FROM Employee LEFT JOIN Bonus
ON Employee.empID=Bonus.empID
WHERE bonus<1000 OR bonus IS NULL /* IS NULL */