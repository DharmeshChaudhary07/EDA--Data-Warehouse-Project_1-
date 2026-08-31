/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/

-- Determine the first and last order date and the total duration in months

select 
	min(order_date),
    max(order_date),
    timestampdiff(year ,min(order_date),max(order_date))
from sales_gold_layer;


-- Find the youngest and oldest customer based on birthdate

select 
	min(birthdate),
    timestampdiff(year, min(birthdate), curdate()),
    max(birthdate),
    timestampdiff(year, max(birthdate), curdate())
from customer_gold_layer

s
