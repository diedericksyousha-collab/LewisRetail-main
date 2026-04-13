SELECT
    p.SKU,
    p.Description,
    d.DepartmentName,
    COUNT(o.OrderID) AS TimesSold,
    SUM(o.TotalAmount) AS TotalRevenue
FROM Products p
JOIN Departments d ON p.DepartmentID = d.DepartmentID
LEFT JOIN Orders o ON p.ProductID = o.ProductID AND o.OrderStatus = 'Completed'
GROUP BY p.SKU, p.Description, d.DepartmentName
ORDER BY TotalRevenue DESC;
