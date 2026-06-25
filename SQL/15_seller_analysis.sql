-- Top Sellers
-- ---------------------------

SELECT
ds.seller_id,
ds.seller_city,
ds.seller_state,
ROUND(SUM(fs.payment_value),2) AS revenue
FROM fact_sales fs
JOIN dim_seller ds
ON fs.seller_id = ds.seller_id
GROUP BY
ds.seller_id,
ds.seller_city,
ds.seller_state
ORDER BY revenue DESC
LIMIT 20;


-- Seller Profitability
-- ---------------------------------

SELECT
ds.seller_id,
ROUND(SUM(fs.profit),2) AS profit
FROM fact_sales fs
JOIN dim_seller ds
ON fs.seller_id = ds.seller_id
GROUP BY ds.seller_id
ORDER BY profit DESC
LIMIT 20;


-- Seller Delivery Performance
-- ---------------------------------

SELECT
ds.seller_state,
ROUND(AVG(fs.delivery_days),2) AS avg_delivery_days
FROM fact_sales fs
JOIN dim_seller ds
ON fs.seller_id = ds.seller_id
GROUP BY ds.seller_state
ORDER BY avg_delivery_days DESC;


-- Late Delivery by Seller State
-- ----------------------------------


SELECT
ds.seller_state,
COUNT(*) AS late_orders
FROM fact_sales fs
JOIN dim_seller ds
ON fs.seller_id = ds.seller_id
WHERE fs.late_delivery = 'Late'
GROUP BY ds.seller_state
ORDER BY late_orders DESC;