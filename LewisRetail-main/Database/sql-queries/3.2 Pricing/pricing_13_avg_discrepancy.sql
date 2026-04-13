SELECT 
    AVG(TotalAmount - ((UnitPrice * Quantity) - DiscountAmount + VATAmount)) AS AvgDiscrepancy
FROM Orders;
