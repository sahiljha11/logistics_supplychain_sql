SELECT p.product_name, SUM(od.quantity) AS total_ordered
FROM Order_Details od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_ordered DESC
LIMIT 5;
