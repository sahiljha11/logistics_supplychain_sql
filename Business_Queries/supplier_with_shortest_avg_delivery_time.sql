SELECT s.supplier_name, 
       AVG(DATEDIFF(delivery_date, shipment_date)) AS avg_delivery_days
FROM Shipments sh
JOIN Orders o ON sh.order_id = o.order_id
JOIN Order_Details od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id
GROUP BY s.supplier_name
ORDER BY avg_delivery_days ASC
LIMIT 1;