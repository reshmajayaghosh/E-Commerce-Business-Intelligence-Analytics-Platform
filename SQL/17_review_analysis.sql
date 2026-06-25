-- Average Review
-- -------------------------

SELECT
AVG(review_score)
FROM fact_sales;


-- Average Review By Category
-- ------------------------------------

SELECT
dp.product_category_name_english,
ROUND(AVG(fs.review_score),2) AS avg_review
FROM fact_sales fs
JOIN dim_product dp
ON fs.product_id = dp.product_id
GROUP BY dp.product_category_name_english
ORDER BY avg_review;


-- Review Impact Of Late Deliveries
-- -----------------------------------------

SELECT
late_delivery,
ROUND(AVG(review_score),2) AS avg_review
FROM fact_sales
GROUP BY late_delivery;