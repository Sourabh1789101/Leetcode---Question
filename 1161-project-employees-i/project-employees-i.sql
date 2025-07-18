# Write your MySQL query statement below
SELECT project_id,ROUND(AVG(experience_years),2) AS average_years
FROM Project pr JOIN Employee emp
ON pr.employee_id = emp.employee_id GROUP BY project_id;