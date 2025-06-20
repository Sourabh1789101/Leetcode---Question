# Write your MySQL query statement below
With CumulativeWeights AS (
    Select
        person_name,
        turn,
        Sum(weight) Over (Order by turn) As Running_weight
    From Queue
)
Select person_name
From CumulativeWeights
Where running_weight <= 1000
Order by turn desc
Limit 1;