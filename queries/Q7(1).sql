select leads_closed.seller_id, COUNT(orders.order_id) as total_orders
from leads_closed
left join order_items
on leads_closed.seller_id = order_items.seller_id
left join orders
on orders.order_id = order_items.order_id
GROUP BY leads_closed.seller_id
HAVING COUNT(orders.order_id) = 0;