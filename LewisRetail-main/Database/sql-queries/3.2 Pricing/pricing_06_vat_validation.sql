SELECT 
    OrderID,
    VATAmount,
    (UnitPrice * Quantity - DiscountAmount) * 0.15 AS ExpectedVAT
FROM Orders
WHERE VATAmount <> (UnitPrice * Quantity - DiscountAmount) * 0.15;
