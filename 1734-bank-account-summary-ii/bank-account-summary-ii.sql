# Write your MySQL query statement below
Select 
    u.name, SUM(t.amount) as balance
From
    Users u
Join
    Transactions t
On
    u.account = t.account
Group By u.account
Having 
    balance > 10000;