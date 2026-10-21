select customers.customer_state, ROUND(avg(order_reviews.review_score),2) AS avg_order_score
from order_reviews
left join orders on orders.order_id = order_reviews.order_id
left join customers on customers.customer_id = orders.customer_id
WHERE orders.order_status = 'delivered'
GROUP BY customers.customer_state
ORDER BY avg_order_score DESC;