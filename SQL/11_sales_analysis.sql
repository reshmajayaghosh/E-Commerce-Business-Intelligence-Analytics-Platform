-- Monthly Revenue Trend
-- ---------------------------------

SELECT
YEAR(order_purchase_timestamp) AS order_year,
MONTH(order_purchase_timestamp) AS order_month,
ROUND(SUM(payment_value),2) AS revenue
FROM fact_sales
GROUP BY
YEAR(order_purchase_timestamp),
MONTH(order_purchase_timestamp)
ORDER BY
order_year,
order_month;



-- Top Product Categories
-- ---------------------------------

SELECT
dp.product_category_name_english,
ROUND(SUM(fs.payment_value),2) AS revenue
FROM fact_sales fs
JOIN dim_product dp
ON fs.product_id = dp.product_id
GROUP BY dp.product_category_name_english
ORDER BY revenue DESC
LIMIT 10;



-- Top Sellers
-- ---------------------------------

SELECT
seller_id,
ROUND(SUM(payment_value),2) AS revenue
FROM fact_sales
GROUP BY seller_id
ORDER BY revenue DESC
LIMIT 10;


-- Revenue by Month Name
-- -------------------------------

SELECT
d.year_num,
d.month_num,
d.month_name,
ROUND(SUM(fs.payment_value),2) AS revenue
FROM fact_sales fs
JOIN dim_date d
ON fs.purchase_date = d.date_key
GROUP BY
d.year_num,
d.month_num,
d.month_name
ORDER BY
d.year_num,
d.month_num;


-- Revenue by Quarter
-- -------------------------------

SELECT
d.year_num,
d.quarter_num,
ROUND(SUM(fs.payment_value),2) AS revenue
FROM fact_sales fs
JOIN dim_date d
ON fs.purchase_date = d.date_key
GROUP BY
d.year_num,
d.quarter_num
ORDER BY
d.year_num,
d.quarter_num;


-- Revenue by Weekday
-- -------------------------------

SELECT
d.weekday_name,
ROUND(SUM(fs.payment_value),2) AS revenue
FROM fact_sales fs
JOIN dim_date d
ON fs.purchase_date = d.date_key
GROUP BY d.weekday_name
ORDER BY revenue DESC;