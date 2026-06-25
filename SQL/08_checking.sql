SELECT COUNT(*) FROM fact_sales_staging WHERE payment_value='';

SELECT COUNT(*) FROM fact_sales_staging WHERE delivery_days='';

SELECT COUNT(*) FROM fact_sales_staging WHERE approval_hours='';

SELECT COUNT(*) FROM fact_sales_staging WHERE carrier_pickup_days='';

SELECT COUNT(*) FROM fact_sales_staging WHERE delivery_variance_days='';

SELECT COUNT(*) FROM fact_sales_staging WHERE review_score='';





SELECT
payment_value,
delivery_days,
approval_hours,
carrier_pickup_days,
delivery_variance_days,
review_score
FROM fact_sales_staging
WHERE
payment_value = ''
OR delivery_days = ''
OR approval_hours = ''
OR carrier_pickup_days = ''
OR delivery_variance_days = ''
OR review_score = ''
LIMIT 20;



SELECT COUNT(*)
FROM fact_sales;