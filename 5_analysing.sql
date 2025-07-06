
-- Yearly Sales
SELECT YEAR_ID, ROUND(SUM(SALES), 2) AS TOTAL_SALES
FROM curated_sales_file.sales_cleaned
GROUP BY YEAR_ID
ORDER BY YEAR_ID;

-- Best Selling Product Line
SELECT PRODUCTLINE, ROUND(SUM(SALES), 2) AS TOTAL_SALES
FROM curated_sales_file.sales_cleaned
GROUP BY PRODUCTLINE
ORDER BY TOTAL_SALES DESC;

-- Top 5 Customers 
SELECT CUSTOMERNAME, ROUND(SUM(SALES), 2) AS TOTAL_REVENUE
FROM curated_sales_file.sales_cleaned
GROUP BY CUSTOMERNAME
ORDER BY TOTAL_REVENUE DESC
LIMIT 5;


-- Sales by Country
SELECT COUNTRY, ROUND(SUM(SALES), 2) AS TOTAL_SALES
FROM curated_sales_file.sales_cleaned
GROUP BY COUNTRY
ORDER BY TOTAL_SALES DESC;

-- Oders with Quantity > 50
SELECT *
FROM curated_sales_file.sales_cleaned
WHERE QUANTITYORDERED > 50
ORDER BY QUANTITYORDERED DESC;

-- Average Order value 
SELECT ROUND(AVG(SALES), 2) AS AVG_ORDER_VALUE
FROM sales_cleaned;

-- file view 
SELECT * FROM curated_sales_file.sales_cleaned;

