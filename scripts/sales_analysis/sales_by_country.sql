SELECT 
    c.country,
    SUM(f.quantity) AS total_quantity_sold,
    SUM(f.sales_amount) AS total_revenue
FROM Gold.fact_sales f
JOIN Gold.dim_customers c 
    ON f.customer_key = c.customer_key
GROUP BY c.country
ORDER BY total_revenue DESC;
