SELECT c.customer_name, SUM(od.quantity * p.unit_price) AS total_spent
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Order_Details od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;
