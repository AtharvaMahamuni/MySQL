-- TODO: DISTINCT 

-- SELECT stu_fname AS firstName, email FROM students;
-- SELECT DISTINCT stu_fname AS firstName, email FROM students;

-- TODO: ORDER BY

-- SELECT stu_fname, login_count, course_count 
-- FROM students ORDER BY login_count;

-- SELECT stu_fname, login_count, course_count 
-- FROM students ORDER BY login_count ASC;

-- SELECT stu_fname, login_count, course_count 
-- FROM students ORDER BY login_count DESC;

-- TODO: ORDER BY course_count
-- SELECT stu_fname, login_count, course_count 
-- FROM students ORDER BY course_count ASC;

-- SELECT stu_fname, login_count, course_count 
-- FROM students ORDER BY course_count DESC;

-- SELECT DISTINCT stu_fname, login_count, course_count 
-- FROM students ORDER BY 3 DESC;

-- TODO: LIMIT
-- SELECT DISTINCT stu_fname, login_count
-- FROM students ORDER BY login_count DESC LIMIT 0, 5;

-- TODO: LIKE
-- SELECT stu_fname, email FROM students
-- WHERE stu_fname LIKE "%esh";

-- TODO: COUNT

-- SELECT DISTINCT COUNT(stu_fname) FROM students;
-- SELECT COUNT(DISTINCT stu_fname) FROM students;
-- FIXME:
-- there is an chance that stu_fname is same for some students so we write it as:
-- SELECT COUNT(DISTINCT stu_fname, stu_lname) AS count FROM students;

-- TODO: SET MODE
-- SET @@sql_mode = '';

-- TODO: GROUP BY
-- SELECT stu_fname, signup_month, COUNT(*) FROM students
-- GROUP BY signup_month;

-- TODO: MIN AND MAX
-- SELECT stu_fname, email, MIN(login_count) FROM students;
-- SELECT stu_fname, email, MAX(login_count) FROM students;

-- SELECT stu_fname, email, login_count FROM students
-- WHERE login_count = (SELECT MAX(login_count) FROM students);

-- SELECT stu_fname, email, course_count FROM students
-- WHERE course_count = (SELECT MIN(course_count) FROM students);

-- TODO: GROUP BY - MIN AND MAX

-- SELECT MAX(login_count), signup_month FROM students
-- GROUP BY signup_month ORDER BY signup_month;

-- TODO: SUM and AVG
-- SELECT signup_month, login_count FROM students
-- WHERE signup_month = 7;

-- SELECT signup_month, login_count FROM students
-- GROUP BY signup_month;

-- SELECT signup_month, SUM(login_count) FROM students
-- GROUP BY signup_month;

-- SELECT signup_month, AVG(login_count) FROM students
-- GROUP BY signup_month;

-- TODO: AND and OR

-- SELECT email, login_count, signup_month, course_count FROM students
-- WHERE login_count >=20 AND course_count >= 5
-- ORDER BY login_count;

-- SELECT email, login_count, signup_month, course_count FROM students
-- WHERE login_count >=20 OR course_count >= 5
-- ORDER BY login_count;

-- SELECT email, login_count, course_count, signup_month FROM students
-- WHERE signup_month = 7 OR signup_month = 10;

-- SELECT email, login_count, course_count, signup_month FROM students
-- WHERE signup_month = 7 AND signup_month = 10;

-- TODO: RANGE - BETWEEN AND

-- SELECT email, login_count, signup_month FROM students
-- WHERE signup_month BETWEEN 7 AND 10;


-- TODO: CASE

-- SELECT stu_fname, signup_month, 
--     CASE 
--         WHEN signup_month BETWEEN 7 AND 10 THEN 'EARLY BIRD'
--         WHEN signup_month BETWEEN 11 AND 12 THEN 'REGULAR USER'
--         ELSE '##'
--     END AS Custom
-- FROM students;
