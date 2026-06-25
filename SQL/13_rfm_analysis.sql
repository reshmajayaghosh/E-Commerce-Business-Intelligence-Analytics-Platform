-- Recency
-- -----------------------

WITH latest_purchase AS (

SELECT
customer_id,
MAX(order_purchase_timestamp) AS last_purchase
FROM fact_sales
GROUP BY customer_id

)

SELECT *
FROM latest_purchase;


-- Frequency
-- ---------------------------

SELECT
customer_id,
COUNT(DISTINCT order_id) AS frequency
FROM fact_sales
GROUP BY customer_id;


-- Monetary
-- -------------------------

SELECT
customer_id,
ROUND(SUM(payment_value),2) AS monetary
FROM fact_sales
GROUP BY customer_id;