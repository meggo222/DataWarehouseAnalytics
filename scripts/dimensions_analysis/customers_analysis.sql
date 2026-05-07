-- ============================================================
-- File: customers_analysis.sql
-- Description: Customer demographics and segmentation analysis
-- ============================================================

-- Total number of customers
SELECT COUNT(customer_number) AS total_customers
FROM Gold.dim_customers;

-- Customers distribution by country
SELECT
    country,
    COUNT(customer_key) AS total_customers
FROM Gold.dim_customers
GROUP BY country
ORDER BY total_customers DESC;

-- Customers distribution by gender
SELECT
    gender,
    COUNT(customer_key) AS total_customers
FROM Gold.dim_customers
GROUP BY gender;

-- Oldest and youngest customers
SELECT 'Oldest' AS type,
    first_name, last_name, birthdate,
    DATEDIFF(YEAR, birthdate, GETDATE()) AS age
FROM Gold.dim_customers
WHERE birthdate = (SELECT MIN(birthdate) FROM Gold.dim_customers WHERE birthdate IS NOT NULL)

UNION ALL

SELECT 'Youngest',
    first_name, last_name, birthdate,
    DATEDIFF(YEAR, birthdate, GETDATE()) AS age
FROM Gold.dim_customers
WHERE birthdate = (SELECT MAX(birthdate) FROM Gold.dim_customers WHERE birthdate IS NOT NULL);

-- Customers who placed at least one order
SELECT COUNT(DISTINCT c.customer_number) AS customers_with_orders
FROM Gold.dim_customers c
JOIN Gold.fact_sales f ON c.customer_key = f.customer_key;
