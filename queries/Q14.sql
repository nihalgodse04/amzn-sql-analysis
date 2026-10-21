select count(orders.order_id) AS t_orders, DATE_FORMAT(order_purchase_timestamp , '%Y-%m') AS orders_by_month
from orders
GROUP BY DATE_FORMAT(order_purchase_timestamp , '%Y-%m')
order by t_orders desc
LIMIT 1;
 
