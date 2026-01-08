-- Lolality vs Non-Loyalty Revenue 

-- Analyzing Revenue by Loyalty Membership Status

SELECT
    loyalty_member,
    SUM(total_price) AS revenue
FROM sales
WHERE is_completed = 1
GROUP BY loyalty_member;

-- Top 5 Products by Revenue

SELECT
    product_type,
    SUM(total_price) AS revenue,
    COUNT(*) AS orders
FROM sales
WHERE is_completed = 1
GROUP BY product_type
ORDER BY revenue DESC;

-- Cancelled Orders Impact on Revenue

SELECT
    order_status,
    COUNT(*) AS orders,
    SUM(total_price) AS revenue
FROM sales
GROUP BY order_status;