# Write your MySQL query statement below
select sell_date,
count(DISTINCT product) as num_sold,
Group_concat(DISTINCT product) as products
from Activities group by sell_date;