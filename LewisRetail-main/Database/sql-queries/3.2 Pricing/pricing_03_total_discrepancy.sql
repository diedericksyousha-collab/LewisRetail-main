SELECT 
    SUM(TotalAmount - ((UnitPrice * Quantity) - DiscountAmount + VATAmount)) AS TotalDiscrepancy
FROM Orders;
