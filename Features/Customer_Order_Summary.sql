-- Customer Order Summary

CREATE VIEW CustomerOrders AS
SELECT c.customer_name, o.order_id, o.order_date, o.status,
       SUM(od.quantity * p.unit_price) AS total_order_value
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Order_Details od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY o.order_id;
