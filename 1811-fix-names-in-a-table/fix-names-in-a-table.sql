# Write your MySQL query statement  
SELECT user_id,
       CONCAT(Upper(Left(name,1)),lower(substr(name,2))) as name
FROM Users
Order by User_id;
