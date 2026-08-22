-- Business question: Does late delivery affect customer review scores?
SELECT 
    CASE 
        WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date THEN 'Late'
        ELSE 'On Time'
    END AS delivery_status,
    ROUND(AVG(r.review_score), 2) AS avg_review_score,
    COUNT(*) AS num_orders
FROM olist_orders_dataset o
JOIN olist_order_reviews_dataset r ON o.order_id = r.order_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY delivery_status;
