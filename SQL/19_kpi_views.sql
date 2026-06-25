-- Total Revenue
-- ---------------------

CREATE VIEW vw_total_revenue AS
SELECT
ROUND(SUM(payment_value),2) AS total_revenue
FROM fact_sales;

-- Total Profit
-- --------------------------

CREATE VIEW vw_total_profit AS
SELECT
ROUND(SUM(profit),2) AS total_profit
FROM fact_sales;

-- Profit Margin
-- ----------------------------

CREATE VIEW vw_profit_margin AS
SELECT
ROUND(
SUM(profit)
/
SUM(payment_value)
*100,
2
) AS margin_pct
FROM fact_sales;