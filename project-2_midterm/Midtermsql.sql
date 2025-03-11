
ALTER TABLE NewTable RENAME TO product_data_cleaned;


 SELECT 
    p.ProductName, 
    SUM(s.SaleAmount) AS TotalQuantitySold
FROM 
    sales_data_cleaned s
JOIN 
   product_data_cleaned p ON s.ProductID = p.ProductID
GROUP BY 
    p.ProductID, p.ProductName
ORDER BY 
    TotalQuantitySold DESC
LIMIT 5; -- Top 5 best-selling products

SELECT 
    c.CustomerName, 
    COUNT(s.SalesID) AS TotalPurchases, 
    SUM(s.SaleAmount * p.Price) AS TotalSpent
FROM 
    sales_data_cleaned s
JOIN 
    customer_data_cleaned c ON s.CustomerID = c.CustomerID
JOIN 
    product_data_cleaned p ON s.ProductID = p.ProductID
GROUP BY 
    c.CustomerID, c.CustomerName
ORDER BY 
    TotalSpent DESC;
    
   
SELECT 
    c.CustomerID,
    c.CustomerName, 
    COUNT(s.SalesID) AS TotalPurchases, 
    SUM(s.SaleAmount * p.Price) AS TotalSpent
FROM 
    sales_data_cleaned s
JOIN 
    customer_data_cleaned c ON s.CustomerID = c.CustomerID
JOIN 
    product_data_cleaned p ON s.ProductID = p.ProductID
GROUP BY 
    c.CustomerID, c.CustomerName
ORDER BY 
    TotalSpent DESC;
    
ALTER TABLE NewTable RENAME TO sale_data_cleaned;

   
   SELECT 
    c.CustomerID,
    c.CustomerName,
    SUM(CASE WHEN p.ProductName = 'Laptop' THEN s.SaleAmount ELSE 0 END) AS LaptopsPurchased,
    SUM(CASE WHEN p.ProductName = 'Smartphone' THEN s.SaleAmount ELSE 0 END) AS SmartphonesPurchased,
    SUM(CASE WHEN p.ProductName = 'Desk' THEN s.SaleAmount ELSE 0 END) AS DesksPurchased,
    SUM(s.SaleAmount * p.Price) AS TotalSpent
FROM 
    sales_data_cleaned s
JOIN 
    customer_data_cleaned c ON s.CustomerID = c.CustomerID
JOIN 
    product_data_cleaned p ON s.ProductID = p.ProductID
GROUP BY 
    c.CustomerID, c.CustomerName
ORDER BY 
    TotalSpent DESC;
    
SELECT 
    strftime('%Y-%m', date(substr(s.SaleDate, 7, 4) || '/' || substr(s.SaleDate, 1, 2) || '/' || substr(s.SaleDate, 4, 2))) AS Month,
    SUM(s.SaleAmount * p.Price) AS TotalSales
FROM 
    sales_data_cleaned s
JOIN 
    product_data_cleaned p ON s.ProductID = p.ProductID
GROUP BY 
    Month
ORDER BY 
    Month;
    
   
   
   
SELECT 
    SaleYear,
    SaleDay,
     SUM(CASE WHEN p.ProductName = 'Laptop' THEN s.SaleAmount ELSE 0 END) AS LaptopsPurchased,
    SUM(CASE WHEN p.ProductName = 'Smartphone' THEN s.SaleAmount ELSE 0 END) AS SmartphonesPurchased,
    SUM(CASE WHEN p.ProductName = 'Desk' THEN s.SaleAmount ELSE 0 END) AS DesksPurchased,
    SUM(s.SaleAmount * p.Price) AS TotalSales
FROM 
    sale_data_cleaned s
JOIN 
    product_data_cleaned p ON s.ProductID = p.ProductID
GROUP BY 
    SaleYear, SaleDay
ORDER BY 
    SaleYear, SaleDay;   
    
   
SELECT 
    SaleYear,
    SaleMonth,
    SaleDay,
     SUM(CASE WHEN p.ProductName = 'Laptop' THEN s.SaleAmount ELSE 0 END) AS LaptopsPurchased,
    SUM(CASE WHEN p.ProductName = 'Smartphone' THEN s.SaleAmount ELSE 0 END) AS SmartphonesPurchased,
    SUM(CASE WHEN p.ProductName = 'Desk' THEN s.SaleAmount ELSE 0 END) AS DesksPurchased,
    SUM(s.SaleAmount * p.Price) AS TotalSales
FROM 
    sale_data_cleaned s
JOIN 
    product_data_cleaned p ON s.ProductID = p.ProductID
GROUP BY 
    SaleYear, SaleMonth, SaleDay
ORDER BY 
    SaleYear, SaleMonth, SaleDay;   