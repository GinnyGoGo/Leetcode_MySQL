-- Select information twice and compare

-- ? Think about:
-- EmployeeSalary > ManagerSalary 
-- &
-- EmployeeSalary < ManagerSalary

Select a.Name As Employee
From Employee AS a, 
    Employee AS b /* "As" is optional*/
Where a.ManagerId = b.Id /* ? Why there is not a.Id = b.ManagerId*/
    AND a.Salary > b.Salary
;

-- Approach I: Using Join clause
Select a.Name As Employee
From Employee As a
Join Employee As b
On a.ManagerId = b.Id
And a.Salary > b.Salary
;

-- Approach II: Using a meaningful name
Select E.Name AS Employee
From Employee As E
Join Employee As M /* without naming a, b */
On E.ManagerID = M.Id
where E.Salary > M.Salary
