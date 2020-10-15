-- SELECT REPLACE(stu_fname, 'a', '@') FROM students;

-- SELECT stu_fname, login_count FROM students 
-- ORDER BY login_count DESC 
-- LIMIT 5;


-- SELECT DISTINCT stu_fname FROM students WHERE 
-- stu_fname LIKE "M___";

-- SELECT COUNT(DISTINCT stu_fname, stu_lname) FROM students;


-- SELECT COUNT(*), signup_month FROM students
-- GROUP BY signup_month;


-- SELECT stu_fname, email, login_count 
-- FROM students 
-- WHERE login_count = (SELECT MIN(login_count) FROM students);

-- SELECT stu_fname, email, login_count FROM students ORDER BY login_count ASC LIMIT 1;

-- SELECT stu_fname, email, login_count FROM students 
-- WHERE login_count = (SELECT MAX(login_count) FROM students);

-- SELECT COUNT(DISTINCT stu_fname, stu_lname) AS stu_count, SUM(login_count), signup_month FROM students
-- GROUP BY signup_month
-- ORDER BY signup_month;


-- SELECT stu_fname, login_count, course_count FROM students 
-- WHERE login_count >= 20 AND course_count >= 5;


