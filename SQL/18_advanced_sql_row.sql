-- Top Seller Ranking
-- ------------------------------

SELECT
seller_id,
SUM(payment_value) AS revenue,
RANK() OVER(
ORDER BY SUM(payment_value) DESC
) AS seller_rank
FROM fact_sales
GROUP BY seller_id;


-- Revenue Contribution
-- --------------------------------

SELECT
seller_id,
SUM(payment_value) revenue,
ROUND(
100 * SUM(payment_value)
/
SUM(SUM(payment_value)) OVER(),
2
) revenue_pct
FROM fact_sales
GROUP BY seller_id;