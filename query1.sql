SELECT 
    p.product_category_name_english,
    ROUND(AVG(r.review_score)::numeric, 2) AS avg_rating,
    COUNT(o.order_id) AS total_orders,
    -- We cast text to timestamp before subtracting
    ROUND(AVG(EXTRACT(DAY FROM (o.order_delivered_customer_date::TIMESTAMP - o.order_estimated_delivery_date::TIMESTAMP)))::numeric, 2) AS avg_delay_days
FROM orders o
JOIN reviews r ON o.order_id = r.order_id
JOIN order_items i ON o.order_id = i.order_id
JOIN products pr ON i.product_id = pr.product_id
JOIN category_translation p ON pr.product_category_name = p.product_category_name
WHERE o.order_status = 'delivered'
  AND o.order_delivered_customer_date IS NOT NULL
  AND o.order_estimated_delivery_date IS NOT NULL
GROUP BY 1
HAVING COUNT(o.order_id) > 100
ORDER BY avg_rating ASC;