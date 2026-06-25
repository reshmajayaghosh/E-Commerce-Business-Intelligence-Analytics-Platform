-- Average Delivery Days
-- ---------------------------

SELECT
ROUND(AVG(delivery_days),2) AS avg_delivery_days
FROM fact_sales;

-- State-wise Delivery Performance
-- ----------------------------------------

SELECT
dc.customer_state,
ROUND(AVG(fs.delivery_days),2) AS avg_delivery_days
FROM fact_sales fs
JOIN dim_customer dc
ON fs.customer_id = dc.customer_id
GROUP BY dc.customer_state
ORDER BY avg_delivery_days DESC;

-- Late Delivery Rate
-- ------------------------------------

SELECT
late_delivery,
COUNT(*) AS orders
FROM fact_sales
GROUP BY late_delivery;