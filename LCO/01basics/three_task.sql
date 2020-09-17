-- TODO: CONCAT

-- SELECT CONCAT(stu_fname, ' ', stu_lname) AS fullname from students;
-- SELECT CONCAT(stu_fname, ' ', stu_lname) AS fullname, 
--     login_count
--  from students;

--  SELECT 
--  CONCAT(stu_fname, ' ', stu_lname, ' and login count is ',  login_count) 
--  AS 'full Info' 
--  from students;

-- TODO: REPLACE

-- SELECT REPLACE(stu_fname, 'a', '@') AS fun from students;

-- TODO: SUBSTRING

-- SELECT CONCAT(SUBSTRING(email, 1, 7), "...") AS TRUNCATED from students;


-- TODO: REVERSE

-- SELECT REVERSE(stu_fname) from students;


-- TODO: CHAR_LENGTH

-- SELECT email, CHAR_LENGTH(email) AS LENGTH from students;

-- TODO: UPPER CASE AND LOWER CASE

SELECT UPPER(stu_fname) AS 'Upper name', stu_lname FROM students;

-- TODO: link for ref.ABORT
-- https://dev.mysql.com/doc/refman/8.0/en/string-functions.html#function_upper