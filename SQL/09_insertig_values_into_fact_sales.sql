SELECT COUNT(*)
FROM fact_sales;

INSERT INTO fact_sales
SELECT

order_id,

CAST(order_item_id AS SIGNED),

customer_id,

product_id,

seller_id,

purchase_date,

STR_TO_DATE(
    order_purchase_timestamp,
    '%Y-%m-%d %H:%i:%s'
),

STR_TO_DATE(
    shipping_limit_date,
    '%Y-%m-%d %H:%i:%s'
),

CASE
    WHEN order_approved_at = ''
    THEN NULL
    ELSE STR_TO_DATE(
        order_approved_at,
        '%Y-%m-%d %H:%i:%s'
    )
END,

CASE
    WHEN order_delivered_carrier_date = ''
    THEN NULL
    ELSE STR_TO_DATE(
        order_delivered_carrier_date,
        '%Y-%m-%d %H:%i:%s'
    )
END,

CASE
    WHEN order_delivered_customer_date = ''
    THEN NULL
    ELSE STR_TO_DATE(
        order_delivered_customer_date,
        '%Y-%m-%d %H:%i:%s'
    )
END,

STR_TO_DATE(
    order_estimated_delivery_date,
    '%Y-%m-%d'
),

order_status,

CAST(price AS DECIMAL(12,2)),
CAST(freight_value AS DECIMAL(12,2)),

CAST(NULLIF(payment_value,'') AS DECIMAL(12,2)),

CAST(order_value AS DECIMAL(12,2)),

CAST(profit AS DECIMAL(12,2)),

CAST(profit_margin AS DECIMAL(12,4)),

CAST(NULLIF(delivery_days,'') AS DECIMAL(10,2)),

CAST(estimate_delivery_days AS DECIMAL(10,2)),

CAST(NULLIF(approval_hours,'') AS DECIMAL(10,2)),

CAST(NULLIF(carrier_pickup_days,'') AS DECIMAL(10,2)),

NULLIF(late_delivery,''),

CAST(NULLIF(delivery_variance_days,'') AS DECIMAL(10,2)),

CAST(pickup_date_issue AS SIGNED),

CAST(NULLIF(review_score,'') AS DECIMAL(10,2))

FROM fact_sales_staging;



SELECT COUNT(*)
FROM fact_sales;