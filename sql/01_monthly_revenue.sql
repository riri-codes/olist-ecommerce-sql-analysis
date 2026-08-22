SELECT DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
       ROUND(SUM(p.payment_value), 2) AS revenue,
       COUNT(DISTINCT o.order_id) AS total_orders
FROM olist_orders_dataset o
JOIN olist_order_payments_dataset p ON o.order_id = p.order_id
GROUP BY month
ORDER BY month;
