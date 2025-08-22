CREATE TABLE Shipments (
    shipment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    warehouse_id INT,
    shipment_date DATE,
    delivery_date DATE,
    shipping_cost DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (warehouse_id) REFERENCES Warehouses(warehouse_id)
);
