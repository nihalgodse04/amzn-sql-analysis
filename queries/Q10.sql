SELECT products.product_id, count(order_items.order_id) as order_count
FROM products
LEFT JOIN order_items ON products.product_id = order_items.product_id
WHERE order_items.order_id IS NULL
group by products.product_id
having count(order_items.order_id) = 0;

select * from order_items;