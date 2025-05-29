# Write your MySQL query statement below
Select query_name, 
    ROUND(AVG(rating / position),2) as quality,
    ROUND(AVG(rating < 3) * 100, 2) as poor_query_percentage 
From
    queries 
Group by
    query_name;
