-- [Facebook]
-- Mission: reports the average experience years of all the employees for each project, rounded to 2 digits.
-- Join & group by & round

select project.project_id, round(avg(employee.experience_years),2) as average_years
From project
left join Employee
on project.employee_id = employee.employee_id
group by project_id;