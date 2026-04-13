-- Stock mismatch: Inventory vs Orders
SELECT
    p.ProductID,
    p.SKU,
    p.Description,
    i.QuantityOnHand AS PhysicalStock,
    ISNULL(SUM(o.Quantity), 0) AS TotalSold,
    i.QuantityOnHand + ISNULL(SUM(o.Quantity), 0) AS ImpliedOriginalStock
FROM Products p
JOIN Inventory i ON p.ProductID = i.ProductID
LEFT JOIN Orders o ON p.ProductID = o.ProductID AND o.OrderStatus = 'Completed'
GROUP BY p.ProductID, p.SKU, p.Description, i.QuantityOnHand
ORDER BY p.ProductID;