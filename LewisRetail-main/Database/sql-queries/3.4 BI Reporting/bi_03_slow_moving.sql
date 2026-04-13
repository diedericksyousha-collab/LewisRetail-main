SELECT
    p.SKU,
    p.Description,
    i.QuantityOnHand,
    COUNT(o.OrderID) AS TimesOrdered
FROM Products p
JOIN Inventory i ON p.ProductID = i.ProductID
LEFT JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.SKU, p.Description, i.QuantityOnHand
ORDER BY TimesOrdered ASC;
