SELECT *
FROM Orders
WHERE TotalAmount <> (UnitPrice * Quantity - DiscountAmount + VATAmount);