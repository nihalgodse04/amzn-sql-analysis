SELECT 
    p.product_category_name, 
    DATE(o.order_approved_at) AS order_date, 
    ROUND(SUM(oi.price), 2) AS daily_revenue, 
    ROUND(SUM(SUM(oi.price)) OVER ( PARTITION BY p.product_category_name ORDER BY DATE(o.order_approved_at)), 2) AS cumulative_revenue
FROM order_items oi 
	JOIN orders o ON o.order_id = oi.order_id 
	JOIN products p ON p.product_id = oi.product_id 
WHERE o.order_approved_at IS NOT NULL AND o.order_status NOT IN ('canceled', 'unavailable') 
GROUP BY p.product_category_name, DATE(o.order_approved_at)
ORDER BY p.product_category_name, order_date;