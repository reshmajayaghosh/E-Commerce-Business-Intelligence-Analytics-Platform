-- Repeat Customers
-- -----------------------------

SELECT
dc.customer_type,
COUNT(DISTINCT fs.customer_id) AS customers
FROM fact_sales fs
JOIN dim_customer dc
ON fs.customer_id = dc.customer_id
GROUP BY dc.customer_type;


-- Customer Spend
-- ---------------------------

SELECT
customer_id,
ROUND(SUM(payment_value),2) AS total_spend
FROM fact_sales
GROUP BY customer_id
ORDER BY total_spend DESC
LIMIT 20;