WITH totalOrders AS (
	SELECT 
		sellers.seller_id, 
		COUNT(DISTINCT orders.order_id) AS t_orders
	FROM sellers
		LEFT JOIN order_items ON sellers.seller_id = order_items.seller_id
		LEFT JOIN orders ON orders.order_id = order_items.order_id AND orders.order_delivered_customer_date IS NOT NULL
	GROUP BY sellers.seller_id
)

SELECT *, count(totalOrders.seller_id) over() AS total_sellers_aboveAVG
FROM totalOrders 
WHERE t_orders > (SELECT AVG(totalOrders.t_orders) FROM totalOrders )
ORDER BY totalOrders.t_orders DESC;