# Zepto_Analysis_SQL

## Project Overview

This project analyzes Zepto product data using PostgreSQL and SQL.

The objective is to clean the dataset, explore product and category-level information, and answer business questions related to pricing, discounts, inventory, revenue, and product weight.

## Tools & Technologies

* PostgreSQL
* SQL
* GitHub
* CSV Dataset

## Dataset

The dataset contains information about Zepto products, including:

* SKU ID
* Product category
* Product name
* MRP
* Discount percentage
* Availability quantity
* Discounted selling price
* Product weight
* Out-of-stock status
* Quantity

## SQL Analysis Performed

### 1. Data Exploration

* Counted the total number of products.
* Examined sample records.
* Identified NULL values.
* Checked unique product categories.
* Analyzed out-of-stock products.
* Identified duplicate product names.

### 2. Data Cleaning

* Checked for missing values.
* Identified products with zero MRP or selling price.
* Removed invalid records where MRP was zero.
* Corrected price values where necessary.

### 3. Product Analysis

Analyzed:

* Products with the highest discounts.
* Expensive products with relatively low discounts.
* Out-of-stock products with the highest MRP.
* Product price per gram.
* Product weight categories.

### 4. Category Analysis

Calculated:

* Total revenue potential by category.
* Average discount percentage by category.
* Total inventory weight by category.

## Key Business Questions

The project answers questions such as:

1. How many products are present in the dataset?
2. Which product categories are available?
3. Are there duplicate products?
4. Which products have the highest discounts?
5. Which products are out of stock?
6. Which categories have the highest revenue potential?
7. Which categories provide the highest average discounts?
8. Which products have the lowest price per gram?
9. How can products be classified based on weight?
10. Which categories contain the greatest total inventory weight?

## SQL Concepts Used

This project demonstrates practical use of:

* `SELECT`
* `WHERE`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `DISTINCT`
* `COUNT()`
* `SUM()`
* `AVG()`
* `ROUND()`
* `CASE`
* `IS NULL`
* Aggregate functions
* Data cleaning with `DELETE` and `UPDATE`
* Calculated columns

## How to Run

1. Install PostgreSQL.
2. Create a PostgreSQL database.
3. Create the `zepto` table using the SQL script.
4. Import the Zepto CSV dataset.
5. Run `zepto_analysis.sql`.
6. Review the query results.

## Purpose

This project was created as a practical SQL data-analysis project to demonstrate skills in data cleaning, exploratory analysis, aggregation, and business-oriented problem solving.

