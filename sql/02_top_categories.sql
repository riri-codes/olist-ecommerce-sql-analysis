-- Business question: Which product categories generate the highest revenue?
SELECT t.product_category_name_english AS category,
       ROUND(SUM(oi.price), 2) AS total_revenue,
       COUNT(DISTINCT oi.order_id) AS total_orders
FROM olist_order_items_dataset oi
JOIN olist_products_dataset p ON oi.product_id = p.product_id
JOIN product_category_name_translation t ON p.product_category_name = t.product_category_name
GROUP BY category
ORDER BY total_revenue DESC
LIMIT 10;
