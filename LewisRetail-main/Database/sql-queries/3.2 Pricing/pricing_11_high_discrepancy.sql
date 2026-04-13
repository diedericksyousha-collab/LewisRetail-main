SELECT *
FROM Orders
WHERE ABS(TotalAmount - ((UnitPrice * Quantity) - DiscountAmount + VATAmount)) > 1;
