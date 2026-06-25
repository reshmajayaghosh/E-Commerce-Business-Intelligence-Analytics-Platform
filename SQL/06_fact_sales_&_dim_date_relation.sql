ALTER TABLE fact_sales
ADD COLUMN purchase_date DATE;


UPDATE fact_sales
SET purchase_date = DATE(order_purchase_timestamp);


set sql_safe_updates=0;


SELECT
order_purchase_timestamp,
purchase_date
FROM fact_sales
LIMIT 5;


ALTER TABLE fact_sales
ADD CONSTRAINT fk_date
FOREIGN KEY (purchase_date)
REFERENCES dim_date(date_key);