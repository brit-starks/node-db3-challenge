-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT ProductName, CategoryName
FROM Product AS P
JOIN Category AS C
ON P.Id = C.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT [Order].Id, CompanyName, [Order].OrderDate
FROM [Order]
JOIN Shipper
WHERE [Order].orderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName, QuantityPerUnit
FROM Product
INNER JOIN OrderDetail 
ON OrderDetail.ProductId = Product.Id
INNER JOIN [Order] 
ON OrderDetail.OrderId = [Order].Id
WHERE [Order].Id = '10251';


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT O.Id, C.CompanyName, E.lastName
FROM [Order] AS O
INNER JOIN Customer AS C 
ON O.CustomerId = C.Id
INNER JOIN Employee AS E 
ON O.EmployeeId = e.Id;
