# Write your MySQL query statement below
Select customer_number
From orders
Group by customer_number
Order by count(*) DESC limit 1;