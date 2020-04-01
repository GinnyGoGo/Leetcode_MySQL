-- Find all duplicate records
-- Id, Email

-- Approach I: Having & Group By & Count
Select Email
From Person
Group by Email
Having Count(Email) > 1

-- Approach II: Group By 
Select Email From
(
    Select Email, Count(Email) as num
    From Person
    Group by Email
) 
Where num > 1
;

-- Approach III: Self Join
Select Distinct p1.Email
From Person p1, Person p2
Where p1.Email = p2.Email and p1.id != p2.id
;
