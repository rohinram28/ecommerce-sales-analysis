-- Key Performance Indicator (KPI) Queries

-- Total Revenue

SELECT
    SUM(total_price) AS total_revenue
FROM sales
WHERE is_completed = 1;

-- Total Customers and Total Orders

SELECT
    COUNT(DISTINCT customer_id) AS total_customers,
    COUNT(*) AS total_orders
FROM sales
WHERE is_completed = 1;

-- Average Order Value

SELECT
    SUM(total_price) * 1.0 / COUNT(*) AS average_order_value
FROM sales
WHERE is_completed = 1;

-- Monthly Revenue Trend

SELECT
    yearmonth,
    SUM(total_price) AS revenue
FROM sales
WHERE is_completed = 1
GROUP BY yearmonth
ORDER BY yearmonth;