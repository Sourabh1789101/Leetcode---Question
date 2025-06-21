# Write your MySQL query statement below
Select
    emp1.employee_id,
    emp1.name,
    Count(*) as reports_count,
    Round(AVG(emp2.age)) as average_age
FROM Employees emp1
JOIN Employees emp2 on emp1.employee_id = emp2.reports_to
Group by Emp1.employee_id
Order by Emp1.employee_id;