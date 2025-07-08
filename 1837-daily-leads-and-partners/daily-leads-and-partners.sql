# Write your MySQL query statement below
Select 
    date_id, make_name,
    count(Distinct lead_id) as unique_leads,
    count(Distinct partner_id) as unique_partners
From DailySales
Group by date_id, make_name;