-- TODO: create date time table
/* CREATE TABLE users(
    name VARCHAR(50),
    col1 DATE,
    col2 TIME,
    col3 DATETIME
); */


-- TODO: add some values

/* INSERT INTO users(name, col1, col2, col3) VALUES(
    'hitesh', '2020-08-14', '10:14:22', '2021-08-18 11:08:32'
); */
/* 
INSERT INTO users(name, col1, col2, col3) VALUES(
    'thor', '2020-08-14', '10:14:22', NOW()
); */

/* TODO: Get the data */

SELECT name, DATE_FORMAT(col3, '%m/%d/%Y') from users;