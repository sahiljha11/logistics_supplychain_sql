SELECT w.warehouse_name, p.product_name, i.stock_quantity
FROM Inventory i
JOIN Warehouses w ON i.warehouse_id = w.warehouse_id
JOIN Products p ON i.product_id = p.product_id;
