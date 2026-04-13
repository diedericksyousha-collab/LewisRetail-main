SELECT 
    p.ProductID,
    SUM(i.QuantityOnHand) AS Stock,
    SUM(o.Quantity) AS Sold
FROM Products p
JOIN Inventory i ON p.ProductID = i.ProductID
JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.ProductID
HAVING SUM(i.QuantityOnHand) < 10 AND SUM(o.Quantity) > 100;
