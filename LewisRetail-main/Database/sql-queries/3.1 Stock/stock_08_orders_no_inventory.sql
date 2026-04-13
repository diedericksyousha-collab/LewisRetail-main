SELECT *
FROM Orders o
LEFT JOIN Inventory i ON o.ProductID = i.ProductID
WHERE i.ProductID IS NULL;
