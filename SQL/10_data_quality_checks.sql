
-- Row Count Validation
-- -----------------------------------

SELECT COUNT(*) AS fact_rows
FROM fact_sales;

SELECT COUNT(*) AS customer_rows
FROM dim_customer;

SELECT COUNT(*) AS product_rows
FROM dim_product;

SELECT COUNT(*) AS seller_rows
FROM dim_seller;

SELECT COUNT(*) AS date_rows
FROM dim_date;


-- Null Checks
-- ---------------------------

SELECT COUNT(*)
FROM fact_sales
WHERE customer_id IS NULL;


SELECT COUNT(*)
FROM fact_sales
WHERE product_id IS NULL;


SELECT COUNT(*)
FROM fact_sales
WHERE seller_id IS NULL;


-- Duplicate Business Key Check
-- ------------------------------------


SELECT
order_id,
order_item_id,
COUNT(*) AS duplicate_count
FROM fact_sales
GROUP BY order_id, order_item_id
HAVING COUNT(*) > 1;


-- Foreign Key Validation
-- ---------------------------------

-- Customer

SELECT COUNT(*) 
FROM fact_sales fs
LEFT JOIN dim_customer dc
ON fs.customer_id = dc.customer_id
WHERE dc.customer_id IS NULL;


-- Product

SELECT COUNT(*) 
FROM fact_sales fs
LEFT JOIN dim_product dp
ON fs.product_id = dp.product_id
WHERE dp.product_id IS NULL;


-- Seller

SELECT COUNT(*)
FROM fact_sales fs
LEFT JOIN dim_seller ds
ON fs.seller_id = ds.seller_id
WHERE ds.seller_id IS NULL;


