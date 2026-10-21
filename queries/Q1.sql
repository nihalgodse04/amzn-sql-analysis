select seller_state, COUNT(distinct orders.order_id)
from orders
left join order_items
on orders.order_id = order_items.order_id
left join sellers
on order_items.seller_id = sellers.seller_id
WHERE order_status = "delivered"
GROUP BY seller_state
ORDER BY COUNT(distinct orders.order_id) desc;

CREATE INDEX status_indx
ON orders(order_status);

