-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT round(avg(quantity),0) FROM
(SELECT orders.order_date, sum(order_details.quantity) as quantity
from orders join order_details
on orders.order_id = order_details.order_id
group by orders.order_date) AS order_quantity;