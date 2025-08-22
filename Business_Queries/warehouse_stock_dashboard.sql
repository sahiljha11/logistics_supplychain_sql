SELECT w.warehouse_name, p.category, SUM(i.stock_quantity) AS total_stock
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id
JOIN Warehouses w ON i.warehouse_id = w.warehouse_id
GROUP BY w.warehouse_name, p.category;
