# Write your MySQL query statement below
Select a.name From Employee a
Join Employee b on a.id = b.managerId
Group by b.managerId
Having Count(*) >= 5;