-- Create Database
-- -------------------

CREATE DATABASE ecommerce;

use ecommerce;


-- Create Dimension Table
-- ------------------------------------

-- dim_customer
-- ----------------

CREATE TABLE dim_customer(

customer_id VARCHAR(50) PRIMARY KEY,

customer_unique_id VARCHAR(50),

customer_zip_code_prefix INT,

customer_city VARCHAR(100),

customer_state VARCHAR(5),

customer_type VARCHAR(20)

);

-- dim_product
--  -----------------

CREATE TABLE dim_product(

product_id VARCHAR(50) PRIMARY KEY,

product_category_name VARCHAR(100),

product_category_name_english VARCHAR(100),

product_name_lenght FLOAT,

product_description_lenght FLOAT,

product_photos_qty FLOAT,

product_weight_g FLOAT,

product_length_cm FLOAT,

product_height_cm FLOAT,

product_width_cm FLOAT,

product_volume_cm FLOAT

);


-- dim_seller
-- -----------------------

CREATE TABLE dim_seller(

seller_id VARCHAR(50) PRIMARY KEY,

seller_zip_code_prefix INT,

seller_city VARCHAR(100),

seller_state VARCHAR(5)

);

-- dim_date
-- ------------

CREATE TABLE dim_date(

date_key DATE PRIMARY KEY,

day_num INT,

month_num INT,

month_name VARCHAR(20),

quarter_num INT,

year_num INT,

week_num INT,

weekday_name VARCHAR(20)

);

-- fact table
-- --------------
CREATE TABLE fact_sales (

order_id VARCHAR(50),
order_item_id INT,

customer_id VARCHAR(50),
product_id VARCHAR(50),
seller_id VARCHAR(50),

order_purchase_timestamp VARCHAR(50),
shipping_limit_date VARCHAR(50),

order_approved_at VARCHAR(50),
order_delivered_carrier_date VARCHAR(50),
order_delivered_customer_date VARCHAR(50),
order_estimated_delivery_date VARCHAR(50),

order_status VARCHAR(30),

price VARCHAR(50),
freight_value VARCHAR(50),
payment_value VARCHAR(50),
order_value VARCHAR(50),

profit VARCHAR(50),
profit_margin VARCHAR(50),

delivery_days VARCHAR(50),
estimate_delivery_days VARCHAR(50),

approval_hours VARCHAR(50),
carrier_pickup_days VARCHAR(50),

late_delivery VARCHAR(20),

delivery_variance_days VARCHAR(50),

pickup_date_issue VARCHAR(20),

review_score VARCHAR(20)
);
