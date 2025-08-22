 -- Auto Update Inventory on Shipment
DELIMITER //
CREATE PROCEDURE UpdateInventory(IN o_id INT, IN w_id INT)
BEGIN
    UPDATE Inventory i
    JOIN Order_Details od ON i.product_id = od.product_id
    SET i.stock_quantity = i.stock_quantity - od.quantity
    WHERE od.order_id = o_id AND i.warehouse_id = w_id;
END //
DELIMITER ;
