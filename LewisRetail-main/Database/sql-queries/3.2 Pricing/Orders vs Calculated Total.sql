SELECT TOP 1000
    o.OrderID,
    p.SKU,
    p.UnitPrice AS CataloguePrice,
    o.UnitPrice AS ChargedPrice,
    o.Quantity,
    o.DiscountAmount,
    o.VATAmount,
    o.TotalAmount,
    (o.UnitPrice * o.Quantity) - o.DiscountAmount + o.VATAmount AS CalculatedTotal,
    o.TotalAmount - ((o.UnitPrice * o.Quantity) - o.DiscountAmount + o.VATAmount) AS Discrepancy
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
ORDER BY o.CreatedTimestamp DESC;