/*
===============================================================================
Ranking Analysis
===============================================================================
Purpose:
    - To rank items (e.g., products, customers) based on performance or other metrics.
    - To identify top performers or laggards.

SQL Functions Used:
    - Window Ranking Functions: RANK(), DENSE_RANK(), ROW_NUMBER(), TOP
    - Clauses: GROUP BY, ORDER BY
===============================================================================
*/

-- Which 5 products Generating the Highest Revenue?
-- Simple Ranking

select 
	p.productname,
    sum(s.sales_amount) 
from sales_gold_layer as s
left join product_gold_layer as p
on s.product_key = p.product_key
group by p.productname
order by sum(s.sales_amount) desc
limit 5;


-- Complex but Flexibly Ranking Using Window Functions

select * 
from (
	select 
		p.productname,
        sum(s.sales_amount),
        rank() over(order by sum(s.sales_amount) desc )as rankp
	from sales_gold_layer as s
    left join product_gold_layer as p
    on s.product_key = p.product_key
    group by p.productname
)t where rankp <= 5;


-- What are the 5 worst-performing products in terms of sales?
select * 
from (
	select 
		p.productname,
        sum(s.sales_amount),
        rank() over(order by sum(s.sales_amount))as rankp
	from sales_gold_layer as s
    left join product_gold_layer as p
    on s.product_key = p.product_key
    group by p.productname
)t where rankp <= 5;



-- Find the top 10 customers who have generated the highest revenue
select 
	s.customer_key,
    c.firstname,
    c.lastname,
    sum(s.sales_amount) as revn
from sales_gold_layer as s
left join customer_gold_layer as c
on s.customer_key = c.customer_key
group by s.customer_key, c.firstname, c.lastname
order by revn desc
limit 10;


-- The 4 customers with the fewest orders placed
select 
	s.customer_key,
    c.firstname,
    c.lastname,
    count(distinct s.asorder_no) as orders
from sales_gold_layer as s
left join customer_gold_layer as c
on s.customer_key = c.customer_key
group by s.customer_key, c.firstname, c.lastname
order by orders
limit 4;

