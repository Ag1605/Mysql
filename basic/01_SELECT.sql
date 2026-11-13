
-- =========================================
-- DBMS / SQL INTERVIEW PREPARATION
-- Topic: SELECT Statement
-- =========================================

-- Select our database
USE SQL_Practice;


-- STEP 1: Create a Students table

CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    marks INT
);


-- STEP 2: Insert sample records

INSERT INTO Students (id, name, age, marks)
VALUES
(1, 'Rahul', 22, 85),
(2, 'Amit', 23, 90),
(3, 'Priya', 21, 78),
(4, 'Neha', 22, 95);


-- STEP 3: Display all records

SELECT * FROM Students;


-- STEP 4: Display only names

SELECT name FROM Students;


-- STEP 5: Display names and marks

SELECT name, marks FROM Students;

SHOW DATABASES;