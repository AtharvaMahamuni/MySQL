-- TODO: Inner JOIN(Intersection)

-- SELECT Orders.OrderID, Orders.OrderDate, Customers.customerName
-- FROM (Orders
-- INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID LIMIT 5);  


-- TODO: Joining 3 tables

-- SELECT Orders.orderID, Customers.customerName, Shippers.ShipperName
-- FROM ((Orders
-- INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
-- INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID)
-- LIMIT 10;


-- TODO: Left Join

-- SELECT Customers.customerName, Orders.OrderID
-- FROM Customers
-- LEFT JOIN Orders 
-- ON Customers.CustomerID = Orders.CustomerID;

-- SELECT Customers.customerName, Orders.OrderID
-- FROM Customers
-- INNER JOIN Orders 
-- ON Customers.CustomerID = Orders.CustomerID;


-- TODO: Right Join

-- SELECT Customers.customerName, Orders.OrderID
-- FROM Customers
-- RIGHT JOIN Orders 
-- ON Customers.CustomerID = Orders.CustomerID;

-- We can write it in this way as well
-- SELECT Customers.customerName, Orders.OrderID
-- FROM Orders
-- LEFT JOIN Customers 
-- ON Customers.CustomerID = Orders.CustomerID;


-- TODO: FULL OUTER Join 
-- Not available in MySQL aviabalble in some DBMS but not very useful it gives some random data

-- TODO: Union

-- SELECT City FROM Customers 
-- UNION 
-- SELECT City FROM Suppliers;

-- SELECT City FROM Customers 
-- UNION ALL 
-- SELECT City FROM Suppliers;



