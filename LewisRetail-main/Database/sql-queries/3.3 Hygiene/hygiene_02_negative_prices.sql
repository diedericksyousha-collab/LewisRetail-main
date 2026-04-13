SELECT ProductID, SKU, UnitPrice, CostPrice
FROM Products
WHERE UnitPrice < 0 OR CostPrice < 0;
