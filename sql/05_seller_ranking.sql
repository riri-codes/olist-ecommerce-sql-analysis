-- Business question: Who are the top-performing sellers by revenue within each state?
SELECT seller_id, seller_state, revenue,
       RANK() OVER (PARTITION BY seller_state ORDER BY revenue DESC) AS state_rank
FROM (
    SELECT s.seller_id, s.seller_state, ROUND(SUM(oi.price), 2) AS revenue
    FROM olist_order_items_dataset oi
    JOIN olist_sellers_dataset s ON oi.seller_id = s.seller_id
    GROUP BY s.seller_id, s.seller_state
) sub
ORDER BY seller_state, state_rank
LIMIT 50;
