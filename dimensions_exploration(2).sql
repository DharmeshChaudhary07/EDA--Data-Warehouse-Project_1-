
/*
===============================================================================
Dimensions Exploration
===============================================================================
Purpose:
    - To explore the structure of dimension tables.
	
SQL Functions Used:
    - DISTINCT
    - ORDER BY
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


-- Retrieve a list of unique countries from which customers originate

SELECT DISTINCT 
    cntry 
FROM Data_analytics.customer_gold_layer
ORDER BY cntry;


-- Retrieve a list of unique categories, subcategories, and products

SELECT DISTINCT 
    category, 
    subcategory, 
    productname 
FROM Data_analytics.product_gold_layer
ORDER BY category, subcategory, productname;


select *
FROM Data_analytics.product_gold_layer
where subcategory is null;


-- check for sales_gold_layer

select * 
from Data_analytics.sales_gold_layer 




