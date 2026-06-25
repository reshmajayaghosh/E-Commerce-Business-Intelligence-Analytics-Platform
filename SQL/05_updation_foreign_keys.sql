ALTER TABLE fact_sales
ADD CONSTRAINT fk_customer
FOREIGN KEY(customer_id)
REFERENCES dim_customer(customer_id);



ALTER TABLE fact_sales
ADD CONSTRAINT fk_product
FOREIGN KEY(product_id)
REFERENCES dim_product(product_id);


ALTER TABLE fact_sales
ADD CONSTRAINT fk_seller
FOREIGN KEY(seller_id)
REFERENCES dim_seller(seller_id);