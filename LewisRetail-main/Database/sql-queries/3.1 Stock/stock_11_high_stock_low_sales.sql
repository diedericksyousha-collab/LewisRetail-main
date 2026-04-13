SELECT 
    p.ProductID,
    SUM(i.QuantityOnHand) AS Stock,
    ISNULL(SUM(o.Quantity),0) AS Sold
FROM Products p
JOIN Inventory i ON p.ProductID = i.ProductID
LEFT JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.ProductID
HAVING SUM(i.QuantityOnHand) > 100 AND ISNULL(SUM(o.Quantity),0) < 10;
