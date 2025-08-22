SELECT 
    COUNT(CASE WHEN delivery_date <= DATE_ADD(shipment_date, INTERVAL 3 DAY) THEN 1 END) * 100.0 / COUNT(*) 
    AS on_time_delivery_rate
FROM Shipments
WHERE delivery_date IS NOT NULL;
