SELECT TOP 10
    p.SKU,
    p.Description,
    SUM(o.TotalAmount) AS TotalRevenue
FROM Products p
JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.SKU, p.Description
ORDER BY TotalRevenue DESC;
