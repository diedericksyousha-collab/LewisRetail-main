SELECT TOP 10
    p.SKU,
    SUM(o.Quantity) AS TotalUnitsSold
FROM Products p
JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.SKU
ORDER BY TotalUnitsSold DESC;
