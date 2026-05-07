-- ============================================================
-- File: sales_overview.sql
-- Description: High-level sales KPIs and order metrics
-- ============================================================

-- Overall sales KPIs
SELECT
    SUM(sales_amount) AS total_sales,
    SUM(quantity)     AS total_quantity,
    AVG(price)        AS avg_price
FROM Gold.fact_sales;

-- Total number of orders
SELECT COUNT(DISTINCT order_number) AS total_orders
FROM Gold.fact_sales;
