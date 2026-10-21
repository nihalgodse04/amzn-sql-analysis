select customers.customer_unique_id, SUM(payment_value) AS total_payment
 from customers
 left join orders
 on orders.customer_id = customers.customer_id
 join order_payments
 on orders.order_id = order_payments.order_id
 GROUP BY customer_unique_id
 ORDER BY total_payment DESC
 LIMIT 1;
 