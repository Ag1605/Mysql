-- Topic: WHERE Clause

USE SQL_Practice;

-- Find students who scored more than 80

SELECT *
FROM Students
WHERE marks > 80;

-- Find students whose age is 22

SELECT *
FROM Students
WHERE age = 22;

-- Find students whose marks are between 80 and 95

SELECT *
FROM Students
WHERE marks BETWEEN 80 AND 95;

SELECT * FROM Students;