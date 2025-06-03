# Write your MySQL query statement below
Select ROW_NUMBER() Over(order by IF(MOD(id, 2) = 0, id-1, id+1)) as id,student
FROM seat;