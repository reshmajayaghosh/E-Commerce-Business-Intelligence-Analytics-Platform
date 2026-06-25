-- Revenue Validation
-- ---------------------------

SELECT
ROUND(SUM(payment_value),2) AS total_revenue
FROM fact_sales;


-- Profit Validation
-- -----------------------------

SELECT
ROUND(SUM(profit),2) AS total_profit
FROM fact_sales;


-- Margin %
-- --------------------

SELECT
ROUND
(SUM(profit)/ SUM(payment_value)*100,2)
FROM fact_sales;


-- Revenue / Profit By Category
-- --------------------------------

SELECT
dp.product_category_name_english,
ROUND(SUM(fs.payment_value),2) AS revenue,
ROUND(SUM(fs.profit),2) AS profit
FROM fact_sales fs
JOIN dim_product dp
ON fs.product_id = dp.product_id
GROUP BY dp.product_category_name_english
ORDER BY profit DESC;


-- Lowest Margin Categories
-- ----------------------------------

SELECT
dp.product_category_name_english,
ROUND(
SUM(fs.profit) /
SUM(fs.payment_value) * 100,
2
) AS margin_pct
FROM fact_sales fs
JOIN dim_product dp
ON fs.product_id = dp.product_id
GROUP BY dp.product_category_name_english
ORDER BY margin_pct;