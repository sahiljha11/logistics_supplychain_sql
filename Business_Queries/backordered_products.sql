SELECT od.order_id, p.product_name, od.quantity AS ordered_qty, 
       IFNULL(i.stock_quantity, 0) AS available_qty,
       (od.quantity - IFNULL(i.stock_quantity, 0)) AS shortage
FROM Order_Details od
JOIN Products p ON od.product_id = p.product_id
LEFT JOIN Inventory i ON od.product_id = i.product_id
WHERE od.quantity > IFNULL(i.stock_quantity, 0);
