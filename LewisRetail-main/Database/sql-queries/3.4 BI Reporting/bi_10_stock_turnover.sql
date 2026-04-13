SELECT
    p.SKU,
    SUM(o.Quantity) AS UnitsSold,
    i.QuantityOnHand,
    CASE 
        WHEN i.QuantityOnHand = 0 THEN NULL
        ELSE SUM(o.Quantity) * 1.0 / i.QuantityOnHand
    END AS StockTurnoverRatio
FROM Products p
JOIN Inventory i ON p.ProductID = i.ProductID
LEFT JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.SKU, i.QuantityOnHand
ORDER BY StockTurnoverRatio DESC;
