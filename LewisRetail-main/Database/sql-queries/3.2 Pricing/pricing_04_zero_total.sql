SELECT OrderID, CustomerID, TotalAmount, CreatedTimestamp, OrderStatus, VATAmount, UnitPrice, DiscountAmount
FROM Orders
WHERE TotalAmount = 0;
