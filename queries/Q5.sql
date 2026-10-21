select product_category_name, 
       ROUND(avg(review_score), 2) AS review_score_avg
from order_reviews
	left join order_items on order_reviews.order_id = order_items.order_id
	left join products on order_items.product_id = products.product_id
group by product_category_name
ORDER BY review_score_avg DESC;

select count(distinct(products.product_category_name))
from products;