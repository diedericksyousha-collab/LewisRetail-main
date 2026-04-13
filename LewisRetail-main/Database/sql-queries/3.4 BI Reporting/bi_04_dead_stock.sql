SELECT
    p.SKU,
    p.Description,
    i.QuantityOnHand
FROM Products p
JOIN Inventory i ON p.ProductID = i.ProductID
LEFT JOIN Orders o ON p.ProductID = o.ProductID
WHERE o.OrderID IS NULL;
