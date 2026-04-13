SELECT CustomerID, FullName, Phone
FROM Customers
WHERE LEN(Phone) < 10 
   OR LEN(Phone) > 12 
   OR Phone LIKE '%[^0-9]%';
