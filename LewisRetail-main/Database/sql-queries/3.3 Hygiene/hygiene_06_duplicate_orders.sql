SELECT OrderReference, COUNT(*) AS Occurrences
FROM Orders
GROUP BY OrderReference
HAVING COUNT(*) > 1;
