SELECT w.warehouse_name, w.capacity, 
       SUM(i.stock_quantity) AS current_stock,
       ROUND((SUM(i.stock_quantity) / w.capacity) * 100, 2) AS utilization_percent
FROM Warehouses w
JOIN Inventory i ON w.warehouse_id = i.warehouse_id
GROUP BY w.warehouse_id, w.warehouse_name, w.capacity;
