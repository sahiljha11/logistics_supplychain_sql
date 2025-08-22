-- Maintain Stock Integrity — no negative stock
DELIMITER //

CREATE TRIGGER prevent_negative_stock_insert
BEFORE INSERT ON Inventory
FOR EACH ROW
BEGIN
    IF NEW.stock_quantity < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stock cannot be negative';
    END IF;
END//

DELIMITER ;
