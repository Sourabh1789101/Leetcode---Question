# Write your MySQL query statement below
Select Round(Count(A1.player_id)/(select count(Distinct A3.player_id) From Activity A3),2)
as fraction 
From Activity A1
where 
     (A1.player_id, DATE_SUB(A1.event_date, INTERVAL 1 DAY)) IN (
    SELECT
      A2.player_id,
      MIN(A2.event_date)
    FROM
      Activity A2
    GROUP BY
      A2.player_id
  );