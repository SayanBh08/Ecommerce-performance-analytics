SELECT 
    t.product_category_name_english AS category,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(i.price)::numeric, 2) AS total_revenue,
    ROUND(AVG(r.review_score)::numeric, 2) AS avg_customer_rating
FROM orders o
JOIN order_items i ON o.order_id = i.order_id
JOIN products p ON i.product_id = p.product_id
JOIN category_translation t ON p.product_category_name = t.product_category_name
JOIN reviews r ON o.order_id = r.order_id
GROUP BY 1
ORDER BY total_revenue DESC
LIMIT 10;