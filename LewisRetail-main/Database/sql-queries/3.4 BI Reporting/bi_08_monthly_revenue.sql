SELECT
    FORMAT(CreatedTimestamp, 'yyyy-MM') AS Month,
    SUM(TotalAmount) AS MonthlyRevenue
FROM Orders
GROUP BY FORMAT(CreatedTimestamp, 'yyyy-MM')
ORDER BY Month;
