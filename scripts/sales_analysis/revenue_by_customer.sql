-- ============================================================
-- File: revenue_by_customer.sql
-- Description: Revenue breakdown by Customers
-- ============================================================


-- Total revenue per customers
SELECT 
    c.first_name + ' ' + c.last_name AS customer_name,
    SUM(f.sales_amount) AS total_revenue
FROM Gold.fact_sales f
JOIN Gold.dim_customers c 
    ON f.customer_key = c.customer_key
GROUP BY c.first_name, c.last_name
ORDER BY total_revenue DESC;
