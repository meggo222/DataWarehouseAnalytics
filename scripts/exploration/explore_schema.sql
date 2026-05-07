-- ============================================================
-- File: explore_schema.sql
-- Description: Explore database tables and column metadata
-- ============================================================

-- List all tables in the database
SELECT * FROM INFORMATION_SCHEMA.TABLES;

-- Explore columns of dim_customers
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers';

-- Explore distinct categories, subcategories and products
SELECT DISTINCT category, subcategory, product_name
FROM Gold.dim_products;
