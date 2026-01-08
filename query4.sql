
SELECT 
    AVG(order_delivered_customer_date::DATE - order_estimated_delivery_date::DATE) as avg_variance
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;