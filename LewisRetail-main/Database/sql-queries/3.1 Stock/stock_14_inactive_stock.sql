SELECT *
FROM Products p
JOIN Inventory i ON p.ProductID = i.ProductID
WHERE p.IsActive = 0 AND i.QuantityOnHand > 0;
