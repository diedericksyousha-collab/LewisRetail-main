SELECT 
    ProductID,
    SUM(QuantityOnHand) AS TotalStock
FROM Inventory
GROUP BY ProductID;
