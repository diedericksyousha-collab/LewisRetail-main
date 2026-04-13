SELECT
    p.SKU,
    AVG(o.TotalAmount) AS AvgOrderValue
FROM Products p
JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.SKU;
