SELECT 
    o.OrderID,
    p.UnitPrice AS CataloguePrice,
    o.UnitPrice AS ChargedPrice
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
WHERE o.UnitPrice <> p.UnitPrice;
