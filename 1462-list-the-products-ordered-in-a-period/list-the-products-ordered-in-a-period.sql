# Write your MySQL query statement below
SELECT p.product_name, sum(o.unit) as unit
FROM Products p
JOIN Orders o ON p.product_id = o.product_id
WHERE Extract(Year From o.order_date) = 2020 and Extract(Month From o.order_date) = 2
Group by p.product_name
Having SUM(o.unit) >= 100;