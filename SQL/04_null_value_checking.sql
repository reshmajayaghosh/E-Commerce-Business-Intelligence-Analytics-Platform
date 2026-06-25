SELECT COUNT(*)
FROM fact_sales
WHERE customer_id IS NULL;


SELECT COUNT(*)
FROM fact_sales
WHERE product_id IS NULL;


SELECT COUNT(*)
FROM fact_sales
WHERE seller_id IS NULL;