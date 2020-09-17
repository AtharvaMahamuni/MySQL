-- TODO: answer : 1

/* SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate 
FROM (Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID) ; */

-- TODO: answer :  2

/* SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
) LIMIT 5; */

-- TODO: answer : 3

/* SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID; */


-- TODO: RIGHT

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- TODO: Full outer join

-- TODO: UNION

SELECT City from Customers
UNION 
SELECT City from Suppliers ORDER BY City;

