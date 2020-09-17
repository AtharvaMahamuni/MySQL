-- SHOW DATABASES;
-- USE photo_store;
-- SHOW TABLES;

-- TODO: Creating table for storing customer data.
-- CREATE TABLE customers(
--     id INT NOT NULL AUTO_INCREMENT,
--     name VARCHAR(30) NOT NULL,
--     email VARCHAR(30) NOT NULL DEFAULT 'No email provided',
--     amount INT,
--     PRIMARY KEY(id)
-- );

-- TODO: Add some values in customer table.

-- INSERT INTO customers(name, email, amount)
-- VALUES (
--     'Atharva',
--     'atharva@mail.com',
--     50000
-- )

-- SELECT * from customers;

-- INSERT INTO customers(name, email, amount)
-- VALUES (
--     'Elon',
--     'elon@mail.com',
--     50000000
-- )

-- INSERT INTO customers(name, amount)
-- VALUES (
--     'steve',
--     100000
-- )

-- TODO: Creating table for storing customer data, here we are deleting old table and making new one.

-- DROP TABLE customers;

-- CREATE TABLE customers(
--     id INT NOT NULL AUTO_INCREMENT,
--     name VARCHAR(30) NOT NULL,
--     email VARCHAR(30) NOT NULL DEFAULT 'No email provided',
--     amount INT,
--     PRIMARY KEY(id)
-- );

-- DESC customers;

-- Adding data in customers table
-- TODO: add this data for practice
-- INSERT INTO customers(name, email, amount)
-- VALUES ('hitesh', 'hitesh@lco.dev', 35),
--         ('George', 'geo@lco.dev', 45),
--         ('hitesh', 'hitesh@gmail.com', 88),
--         ('lina', 'lina@gmail.com', 78),
--         ('Jimmy', 'jimmy@yahoo.co.in', 54),
--         ('lina', 'lina@yahoo.co.in', 35),
--         ('hitesh', 'hitesh@yahoo.co.in', 56);

-- TODO: answering customer questions task 1.6

-- SELECT name from customers;
-- SELECT email from customers;
-- SELECT amount from customers;

-- this is known as aliasing
-- SELECT amount AS Purchases from customers;


-- TODO: UPDATE TASKS task 1.7

-- SELECT * from customers WHERE name='jimmy';
-- UPDATE customers SET email='jimmy@yahoo.com' WHERE name='jimmy';


-- SELECT * from customers WHERE name ='lina';
-- SELECT * from customers WHERE id=6;
-- UPDATE customers SET amount = 38 WHERE id = 6;


-- SELECT * from customers WHERE name='lina';
-- UPDATE customers SET email='lina@gmail.com' WHERE name='lina';

-- TODO: Delete some data

-- SELECT * from customers WHERE name='george';
-- DELETE from customers WHERE name='george';


-- SELECT * from customers WHERE name='hitesh';
-- DELETE FROM customers WHERE name = 'hitesh';


-- SELECT * from customers WHERE name='lina';
DELETE FROM customers WHERE name='lina';