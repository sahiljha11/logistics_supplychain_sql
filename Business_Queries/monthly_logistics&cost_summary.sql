SELECT DATE_FORMAT(shipment_date, '%Y-%m') AS month, 
       SUM(shipping_cost) AS total_cost
FROM Shipments
GROUP BY month
ORDER BY month;
