-- TODO: DISTINCT

-- SELECT DISTINCT stu_fname AS FirstName, email from students;

-- TODO: ORDER BY

-- SELECT DISTINCT stu_fname, login_count, course_count 
-- from students ORDER BY login_count ASC;

-- SELECT DISTINCT stu_fname, login_count, course_count 
-- from students ORDER BY course_count DESC;

-- TODO: LIMIT

-- SELECT DISTINCT stu_fname, login_count 
-- from students ORDER BY login_count DESC LIMIT 0, 5;

-- TODO: LIKE

-- SELECT stu_fname, email from students WHERE stu_fname LIKE '%esh';

-- TODO: COUNT

-- SELECT  COUNT( DISTINCT stu_fname, stu_lname) AS count from students;

-- TODO: for reading
-- https://mariadb.com/kb/en/sql-mode/

-- TODO: SQL mode

-- SET @@sql_mode='';

-- TODO: GROUP BY

-- SELECT stu_fname, signup_month, COUNT(*) from students
-- GROUP BY signup_month;

-- TODO:  MIN and MAX

-- SELECT stu_fname, email, login_count from students
-- WHERE login_count = (SELECT MAX(login_count) from students)
-- ;

-- TODO:  GROUP BY  - MIN and MAX

-- SELECT MAX(login_count), signup_month from students
-- GROUP BY signup_month ORDER BY signup_month;


-- TODO: SUM and AVG

-- SELECT signup_month, login_count from students
-- WHERE signup_month = 7;

-- SELECT signup_month, AVG(login_count) from students
-- GROUP BY signup_month;

-- TODO: AND and OR  

-- SELECT email, login_count, signup_month, course_count from students
-- WHERE login_count>=20 OR course_count >= 5 
-- ORDER BY login_count;

-- SELECT email, login_count, course_count, signup_month from students
-- WHERE signup_month=7 OR signup_month=10;

-- TODO: RANGE - BETWEEN AND 

-- SELECT email, login_count, signup_month from students
-- WHERE signup_month BETWEEN 7 AND 10;

-- TODO: CASE 

SELECT stu_fname, signup_month,
    CASE
        WHEN signup_month BETWEEN 7 AND 10 THEN 'EARLY BIRD'
        WHEN signup_month BETWEEN 11 AND 12 THEN 'REGULAR USER'
        ELSE '##'
    END AS Custom
from students;