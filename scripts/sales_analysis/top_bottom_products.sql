-- Top 5 Products by Revenue

SELECT TOP 5
    p.product_name,
    SUM(f.sales_amount) AS total_revenue
FROM Gold.fact_sales f
JOIN Gold.dim_products p 
    ON f.product_key = p.product_key
GROUP BY p.product_name
ORDER BY total_revenue DESC;


-- Bottom 5 Products by Revenue

SELECT TOP 5
    p.product_name,
    SUM(f.sales_amount) AS total_revenue
FROM Gold.fact_sales f
JOIN Gold.dim_products p 
    ON f.product_key = p.product_key
GROUP BY p.product_name
ORDER BY total_revenue ASC;
