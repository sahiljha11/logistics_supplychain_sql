SELECT p.product_name, w.warehouse_name, i.stock_quantity
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id
JOIN Warehouses w ON i.warehouse_id = w.warehouse_id
WHERE i.stock_quantity < 50
ORDER BY i.stock_quantity ASC;
