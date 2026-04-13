SELECT 
    ProductID,
    COUNT(DISTINCT StoreID) AS StoreCount,
    SUM(QuantityOnHand) AS TotalStock
FROM Inventory
GROUP BY ProductID
HAVING COUNT(DISTINCT StoreID) > 1;
