-- ============================================================
-- File: products_analysis.sql
-- Description: Product catalog and cost analysis
-- ============================================================

-- Total number of products
SELECT COUNT(product_number) AS total_products
FROM Gold.dim_products;

-- Total products per category
SELECT
    category,
    COUNT(product_key) AS total_products
FROM Gold.dim_products
GROUP BY category;

-- Average cost per category
SELECT
    category,
    AVG(cost) AS avg_cost
FROM Gold.dim_products
GROUP BY category;
