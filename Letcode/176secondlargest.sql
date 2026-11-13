
-- =============================================
-- LeetCode 176: Second Highest Salary
-- Difficulty: Medium
-- Topic: Subquery, DISTINCT, ORDER BY, LIMIT, OFFSET
-- Database: MySQL
-- =============================================

-- Problem:
-- Find the second highest DISTINCT salary
-- from the Employee table.

-- Approach:
-- 1. DISTINCT removes duplicate salaries.
-- 2. ORDER BY salary DESC sorts salaries
--    from highest to lowest.
-- 3. LIMIT 1 OFFSET 1 skips the first row
--    and returns only the second row.
-- 4. The subquery returns the second highest salary.
-- 5. AS SecondHighestSalary gives the output column its name.

SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;


-- =============================================
-- Example:
--
-- Employee Table:
--
-- +----+--------+
-- | id | salary |
-- +----+--------+
-- | 1  | 100    |
-- | 2  | 200    |
-- | 3  | 300    |
-- | 4  | 300    |
-- +----+--------+
--
-- After DISTINCT and ORDER BY DESC:
--
-- 300
-- 200
-- 100
--
-- OFFSET 1 skips 300.
-- LIMIT 1 selects 200.
--
-- Output:
--
-- +---------------------+
-- | SecondHighestSalary |
-- +---------------------+
-- | 200                 |
-- +---------------------+
--
-- Important:
-- If there is no second highest salary,
-- the scalar subquery returns NULL.
-- =============================================
