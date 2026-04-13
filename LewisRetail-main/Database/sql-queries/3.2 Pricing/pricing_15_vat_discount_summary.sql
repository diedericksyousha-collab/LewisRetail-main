SELECT 
    SUM(UnitPrice * Quantity) AS GrossSales,
    SUM(DiscountAmount) AS TotalDiscount,
    SUM(VATAmount) AS TotalVAT,
    SUM(TotalAmount) AS NetSales
FROM Orders;
