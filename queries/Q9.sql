WITH A AS (
select 
ABS(DATEDIFF(date(order_purchase_timestamp), date(order_delivered_customer_date))) as days_between
from orders
WHERE order_delivered_customer_date IS NOT NULL),
	B AS (SELECT 
		days_between,
		ROW_NUMBER() OVER (ORDER BY a.days_between DESC) AS row_num,
		COUNT(*) OVER() AS t_rows
	FROM A)

SELECT AVG(days_between) AS median_days
FROM B
WHERE row_num BETWEEN floor((t_rows + 1)/2) AND ceil((t_rows+1)/2);

