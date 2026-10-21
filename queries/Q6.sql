select customers.customer_unique_id , 
		customers.customer_state,
		COUNT(orders.order_id) as total_orders
from customers
left join orders
on customers.customer_id = orders.customer_id
GROUP BY customers.customer_unique_id , customers.customer_state
order by total_orders desc;
