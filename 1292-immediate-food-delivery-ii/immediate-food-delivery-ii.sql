# Write your MySQL query statement below
Select 
    round(avg(order_date = customer_pref_delivery_date)*100, 2) as immediate_percentage
from Delivery
Where (customer_id, order_date) in (
    Select customer_id, min(order_date)
    from Delivery 
    Group by Customer_id
);