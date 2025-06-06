# Write your MySQL query statement below
SELECT Employee.name,Bonus.bonus
FROM Employee
LEFT JOIN Bonus ON Employee.empid = Bonus.empid
WHERE bonus < 1000 or bonus IS NULL;