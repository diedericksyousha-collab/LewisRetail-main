SELECT
    p.SKU,
    i.QuantityOnHand,
    COUNT(o.OrderID) AS TimesSold
FROM Products p
JOIN Inventory i ON p.ProductID = i.ProductID
LEFT JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.SKU, i.QuantityOnHand
HAVING COUNT(o.OrderID) < 5
ORDER BY i.QuantityOnHand DESC;
