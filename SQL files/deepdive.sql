-- 1. Revenue Contribution (% of Total)
-- Q Which product types contribute most to revenue?

WITH total_revenue AS (
    SELECT SUM(total_price) AS total_rev
    FROM sales
    WHERE is_completed = 1
)
SELECT
    product_type,
    SUM(s.total_price) AS revenue,
    ROUND(SUM(s.total_price) * 100.0 / tr.total_rev, 2) AS revenue_pct
FROM sales s
CROSS JOIN total_revenue tr
WHERE is_completed = 1
GROUP BY product_type
ORDER BY revenue DESC;


-- 2. Monthly Growth (MoM)
-- Q: How is revenue evolving month over month?

WITH monthly_sales AS (
    SELECT
        yearmonth,
        SUM(total_price) AS revenue
    FROM sales
    WHERE is_completed = 1
    GROUP BY yearmonth
)
SELECT
    yearmonth,
    revenue,
    revenue - LAG(revenue) OVER (ORDER BY yearmonth) AS revenue_change
FROM monthly_sales;

-- 3. Loyalty Impact on AOV
-- Q: Do loyalty members spend more per order?

SELECT
    loyalty_member,
    AVG(total_price) AS avg_order_value,
    COUNT(*) AS orders
FROM sales
WHERE is_completed = 1
GROUP BY loyalty_member;SELECT
    customer_id,
    SUM(total_price) AS lifetime_value,
    COUNT(*) AS orders
FROM sales
WHERE is_completed = 1
GROUP BY customer_id
ORDER BY lifetime_value DESC
LIMIT 10;



-- 4. Cancellation Rate by Payment Method
-- Q: Which payment methods have higher cancellation risk?

SELECT
    payment_method,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN order_status = 'Cancelled' THEN 1 ELSE 0 END) AS cancelled_orders,
    ROUND(
        SUM(CASE WHEN order_status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS cancellation_rate_pct
FROM sales
GROUP BY payment_method
ORDER BY cancellation_rate_pct DESC;

-- 5. Top Customers by Revenue
-- Q: Who are the top customers generating the most revenue?

SELECT
    customer_id,
    SUM(total_price) AS lifetime_value,
    COUNT(*) AS orders
FROM sales
WHERE is_completed = 1
GROUP BY customer_id
ORDER BY lifetime_value DESC
LIMIT 10;


-- 6. Add-ons Impact on Revenue
-- Q: Do orders with add-ons increase order value?

SELECT
    CASE 
        WHEN add_ons_purchased = 'None' THEN 'No Add-ons'
        ELSE 'With Add-ons'
    END AS addon_group,
    AVG(total_price) AS avg_order_value,
    COUNT(*) AS orders
FROM sales
WHERE is_completed = 1
GROUP BY addon_group;