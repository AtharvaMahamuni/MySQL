-- TODO: CONCAT

-- SELECT stu_fname, stu_lname from students;
-- SELECT CONCAT(stu_fname, " ", stu_lname) AS fullname from students;

-- SELECT CONCAT(stu_fname, " ", stu_lname) AS fullname,
--     login_count
-- from students;


-- SELECT 
-- CONCAT(stu_fname, " ", stu_lname, ' and login count is ', login_count) 
-- AS 'full info'
-- from students;

-- TODO: REPLACE
-- SELECT REPLACE(stu_fname, 'a', '@') AS fun from students; 

-- TODO: SUBSTRING
--  SELECT email from students;
--  SELECT CONCAT(SUBSTRING(email, 1, 7),'...') AS 'TRUNCATED EMAILs' from students;

-- TODO: REVERSE
-- SELECT REVERSE(stu_fname) FROM students;

-- TODO: CHAR_LENGTH
-- SELECT email, CHAR_LENGTH(email) AS length FROM students;

-- TODO: UPPER CASE AND LOWER CASE
SELECT UPPER(stu_fname) AS upper_name, LOWER(stu_lname) from students;


-- TODO: link for ref.ABORT
-- https://dev.mysql.com/doc/refman/8.0/en/string-functions.html#function_upper



