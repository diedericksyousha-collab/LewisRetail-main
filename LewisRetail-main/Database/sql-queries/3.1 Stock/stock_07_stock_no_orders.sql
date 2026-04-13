SELECT *
FROM Inventory i
LEFT JOIN Orders o ON i.ProductID = o.ProductID
WHERE o.ProductID IS NULL;
