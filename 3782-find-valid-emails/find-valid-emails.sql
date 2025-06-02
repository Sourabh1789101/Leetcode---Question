# Write your MySQL query statement below
Select user_id,email from Users
where email regexp '^[a-z0-9_]+@[a-z]+\\.com$'
order by user_id;