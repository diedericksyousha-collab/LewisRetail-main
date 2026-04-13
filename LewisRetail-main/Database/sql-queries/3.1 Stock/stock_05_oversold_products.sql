SELECT 
    p.ProductID,
    SUM(o.Quantity) AS TotalSold,
    SUM(i.QuantityOnHand) AS Stock
FROM Products p
JOIN Inventory i ON p.ProductID = i.ProductID
JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.ProductID
HAVING SUM(o.Quantity) > SUM(i.QuantityOnHand);