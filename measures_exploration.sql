/*
===============================================================================
Measures Exploration (Key Metrics)
===============================================================================
Purpose:
    - To calculate aggregated metrics (e.g., totals, averages) for quick insights.
    - To identify overall trends or spot anomalies.

SQL Functions Used:
    - COUNT(), SUM(), AVG()
===============================================================================
*/


/*
-- Measures are the quantitative, numeric values that you can count, sum, average, or calculate. They represent the actual 
data points you want to analyze.
	-> Characteristics: Always numbers, aggregatable (you can add them up).
	-> Examples: Total Sales, Profit, Quantity Sold, Temperature, Website Clicks, or Discount Amount.
    
-- Dimensions are the qualitative, descriptive attributes used to slice, dice, filter, and categorize your measures. 
They provide the context for your numbers.
	-> Characteristics: Usually text, dates, or geographical data. They group your measures.
	-> Examples: Product Name, Customer Name, Country, Order Date, Category, or Employee ID.
*/

-- Find the Total Sales
select sum(sales_amount) as totalsales from sales_gold_layer;

-- Find how many items are sold
select sum(quantity) as totalitemsold from sales_gold_layer;

-- Find the average selling price
select avg(sls_price) as avgsellprice from sales_gold_layer;

-- Find the Total number of Orders
select count(asorder_no) as totalorders from sales_gold_layer;

select count(distinct asorder_no) as totaldistinctorder from sales_gold_layer;

-- Find the total number of products
select count(product_no) as totalproduct from product_gold_layer;

select distinct count(product_no) as totalproduct from product_gold_layer;

-- Find the total number of customers
select count(customer_key), count(distinct customer_key) from customer_gold_layer;

-- Find the total number of customers that has placed an order
select count(distinct customer_key) from sales_gold_layer;

-- Generate a Report that shsales_gold_layerows all key metrics of the business

select 'Total Sales' AS measure_name, sum(sales_amount) as measure_value from sales_gold_layer
UNION ALL
SELECT 'Total Quantity', SUM(quantity) from sales_gold_layer
UNION ALL
select 'Average Price', avg(sls_price) FROM sales_gold_layer
UNION ALL
select 'Total Orders', COUNT(DISTINCT asorder_no) from sales_gold_layer
UNION ALL
select  'Total Products', COUNT(DISTINCT product_no) from product_gold_layer
UNION ALL
SELECT 'Total Customers', COUNT(customer_key) FROM customer_gold_layer;
