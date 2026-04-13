SELECT ProductID, COUNT(*)
FROM Inventory
GROUP BY ProductID
HAVING COUNT(*) > 1;
