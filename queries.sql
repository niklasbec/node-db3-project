-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

    select ProductName, CategoryName
    from Products p
    join Categories c
    on p.CategoryID = c.CategoryID;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

    select OrderID, ShipperID
    from Orders o
    join Shippers s
    on o.ShipperID = s.ShipperID
    where o.OrderDate < 2012-08-09;

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

    SELECT p.ProductName, od.Quantity
    FROM OrderDetails as od
    JOIN Products as p
    on p.ProductId = od.ProductId
    WHERE od.OrderId = "10251"

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

