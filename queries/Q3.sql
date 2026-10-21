select 
		payment_type, 
		ROUND(avg(payment_value),2) AS avg_revenue,
        COUNT(DISTINCT order_payments.order_id) as order_count
 from order_payments
 left join orders
 on order_payments.order_id = orders.order_id
 GROUP BY payment_type
 order by order_count desc;
 