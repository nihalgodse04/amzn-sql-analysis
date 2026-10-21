select product_category_name_translation.product_category_name_english, ROUND(SUM(order_items.price),2) as total_revenue
from products
left join order_items on products.product_id = order_items.product_id
left join product_category_name_translation on product_category_name_translation.product_category_name = products.product_category_name
group by product_category_name_translation.product_category_name_english
order by total_revenue DESC LIMIT 5;



-- select order_items.price, order_items.freight_value, order_payments.payment_value 
-- from order_items
-- left join order_payments
-- on order_items.order_id = order_payments.order_id
-- WHERE order_items.order_id = '00010242fe8c5a6d1ba2dd792cb16214';
