CREATE TABLE zepto(
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availabilityQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,
quanity INTEGER
);

SELECT COUNT(*) FROM zepto;

SELECT * FROM zepto LIMIT 10;

SELECT * FROM zepto 
WHERE name IS NULL 
OR 
category IS NULL
OR 
mrp IS NULL
OR 
discountpercent IS NULL
OR 
discountedsellingprice IS NULL
OR 
weightingms IS NULL
OR 
quanity IS NULL
OR 
outofstock IS NULL;


SELECT DISTINCT category FROM zepto
ORDER BY category;


SELECT outofstock,COUNT(sku_id) FROM zepto 
GROUP BY outofstock;


SELECT name,COUNT(sku_id) FROM zepto 
GROUP BY name 
HAVING COUNT(sku_id) >1 
ORDER BY COUNT(sku_id) DESC;


SELECT * FROM zepto 
WHERE mrp = 0 OR discountedsellingprice=0;


DELETE FROM zepto
WHERE mrp =0;


UPDATE zepto 
SET mrp=mrp/100,
discountedsellingprice=discountedsellingprice/100;


SELECT mrp,discountedsellingprice FROM zepto;


SELECT DISTINCT name,mrp,discountpercent FROM zepto
ORDER BY discountpercent DESC
LIMIT 10;


SELECT DISTINCT name,mrp,outofstock FROM zepto
WHERE outofstock=true 
ORDER BY mrp DESC
LIMIT 5;


SELECT category,SUM(discountedsellingprice * availabilityquantity) AS total_revenue FROM zepto
GROUP BY category
ORDER BY total_revenue DESC;


SELECT DISTINCT name,mrp,discountpercent FROM zepto
WHERE mrp>500 AND discountpercent<10
ORDER BY mrp DESC,discountpercent DESC;


SELECT category,ROUND(AVG(discountpercent),2) AS avg_discount_percent FROM zepto
GROUP BY category
ORDER BY avg_discount_percent DESC
LIMIT 5;


SELECT DISTINCT name,ROUND(discountedsellingprice/weightingms,2) AS price_per_gm FROM zepto
WHERE weightingms>=100
ORDER BY price_per_gm;


SELECT DISTINCT name,weightingms,
CASE WHEN weightingms<1000 THEN 'low'
	WHEN weightingms<5000 THEN 'medium'
	ELSE 'bulk'
	END AS weight_category
FROM zepto;


SELECT category,SUM(weightingms*availabilityquantity)/1000 AS weight_per_kg FROM zepto
GROUP BY category
ORDER BY weight_per_kg DESC;

