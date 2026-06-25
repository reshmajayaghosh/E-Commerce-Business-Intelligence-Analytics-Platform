-- Correctig the datatype of fact sales

RENAME TABLE fact_sales TO fact_sales_staging;


CREATE TABLE fact_sales (

order_id VARCHAR(50),

order_item_id INT,

customer_id VARCHAR(50),

product_id VARCHAR(50),

seller_id VARCHAR(50),

purchase_date DATE,

order_purchase_timestamp DATETIME,

shipping_limit_date DATETIME,

order_approved_at DATETIME NULL,

order_delivered_carrier_date DATETIME NULL,

order_delivered_customer_date DATETIME NULL,

order_estimated_delivery_date DATETIME,

order_status VARCHAR(30),

price DECIMAL(12,2),

freight_value DECIMAL(12,2),

payment_value DECIMAL(12,2),

order_value DECIMAL(12,2),

profit DECIMAL(12,2),

profit_margin DECIMAL(12,4),

delivery_days FLOAT NULL,

estimate_delivery_days FLOAT,

approval_hours FLOAT NULL,

carrier_pickup_days FLOAT NULL,

late_delivery VARCHAR(20),

delivery_variance_days FLOAT NULL,

pickup_date_issue INT,

review_score FLOAT NULL,

CONSTRAINT fk_fs_customer
FOREIGN KEY(customer_id)
REFERENCES dim_customer(customer_id),

CONSTRAINT fk_fs_product
FOREIGN KEY(product_id)
REFERENCES dim_product(product_id),

CONSTRAINT fk_fs_seller
FOREIGN KEY(seller_id)
REFERENCES dim_seller(seller_id),

CONSTRAINT fk_fs_date
FOREIGN KEY(purchase_date)
REFERENCES dim_date(date_key)

);



SELECT COUNT(*)
FROM fact_sales_staging;

