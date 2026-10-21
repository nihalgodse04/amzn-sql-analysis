select customers.customer_unique_id
from customers
join orders on orders.customer_id = customers.customer_id
left join order_reviews on order_reviews.order_id = orders.order_id
GROUP BY customers.customer_unique_id
HAVING COUNT(order_reviews.order_id) = 0;