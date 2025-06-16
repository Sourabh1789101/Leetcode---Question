# Write your MySQL query statement below
Select Distinct a.Num as ConsecutiveNums
From Logs a
Join Logs b on a.Id = b.Id - 1
Join Logs c on a.Id = c.Id - 2
Where a.Num = b.Num and a.Num = c.Num;