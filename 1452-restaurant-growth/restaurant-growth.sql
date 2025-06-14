# Write your MySQL query statement below
WITH DailyTotals AS (
    SELECT 
        visited_on,
        SUM(amount) AS daily_amount
    FROM 
        Customer
    GROUP BY 
        visited_on
),
MovingAverages AS (
    SELECT
        visited_on,
        SUM(daily_amount) OVER (ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW) AS amount,
        ROUND(AVG(daily_amount) OVER (ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW), 2) AS average_amount,
        ROW_NUMBER() OVER (ORDER BY visited_on) AS row_num
    FROM 
        DailyTotals
)
SELECT 
    visited_on,
    amount,
    average_amount
FROM 
    MovingAverages
WHERE 
    row_num >= 7
ORDER BY 
    visited_on;