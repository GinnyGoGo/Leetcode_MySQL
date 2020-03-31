-- Order and get the second unique value
Select Distinct Salary As SecondHighestSalary
From Employee
Order by Salary Desc
Limit 1 Offset 1
;


-- Solve the Null problem
Select 
    (Select Distinct Salary 
    From Employee
    Order by Salary Desc
    Limit 1 Offset 1) As SecondHighestSalary
;

--  Or

Select 
    IfNull(
        (Select Distinct Salary 
        From Employee
        Order by Salary Desc
        Limit 1 Offset 1),
    NUll) As SecondHighestSalary
    ;

-- using Select "Max(Salary)"" to find the largest