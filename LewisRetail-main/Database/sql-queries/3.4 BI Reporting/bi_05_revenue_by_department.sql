SELECT
    d.DepartmentName,
    SUM(o.TotalAmount) AS DepartmentRevenue
FROM Departments d
JOIN Products p ON d.DepartmentID = p.DepartmentID
JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY d.DepartmentName
ORDER BY DepartmentRevenue DESC;
