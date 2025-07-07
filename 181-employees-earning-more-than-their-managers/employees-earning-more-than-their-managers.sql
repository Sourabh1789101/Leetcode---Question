# Write your MySQL query statement below
Select name As Employee From Employee e1 
Where
Salary > (Select salary from Employee where id = e1.managerId)