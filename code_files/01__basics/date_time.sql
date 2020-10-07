-- CREATE TABLE users(
--     name VARCHAR(50),
--     col1 DATE,
--     col2 TIME,
--     col3 DATETIME
-- );

-- TODO: ADD SOME VALUES

-- INSERT INTO users(name, col1, col2, col3)
-- VALUES('tony stark', '2020-05-14', '12:30:35', '2021-05-15 23:55:55'),
-- ('bruce bain', '2020-05-14', '12:30:35', NOW());


-- TODO: Get the Data

-- SELECT name, col3 FROM users;
-- SELECT name, DAY(col3) FROM users;
-- SELECT name, YEAR(col3) FROM users;
-- SELECT name, HOUR(col3) FROM users;
-- SELECT name, DATE_FORMAT(col3, '%d--%m--%y') FROM users;
-- SELECT name, DATE_FORMAT(col3, '%M/%D/%Y') FROM users;
-- SELECT name, DATE_FORMAT(col3, '%m/%d/%y') FROM users;