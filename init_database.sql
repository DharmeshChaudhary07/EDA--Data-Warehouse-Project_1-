/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'Data_Analytics' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally
	
*/

--------------------------------------------------------------------------------
-- create a new data base called data_analytics
-- drop if already exists

Drop database if exists data_analytics;

create database Data_analytics;
--------------------------------------------------------------------------------

-- feeding the cleaned data from gold layer views


create table customer_gold_layer
select * from Datawarehouse.custview_gold_layer;

create table product_gold_layer
select * from Datawarehouse.productview_gold_layer;

create table sales_gold_layer
select * from Datawarehouse.salesview_gold_layer;
