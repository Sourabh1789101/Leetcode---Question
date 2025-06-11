# Write your MySQL query statement below
With AllIds AS (
    Select requester_id as id From RequestAccepted
    UNION ALL
    Select accepter_id From RequestAccepted
)
Select id, Count(*) AS num
from AllIds
Group by id
Order by num Desc
Limit 1;