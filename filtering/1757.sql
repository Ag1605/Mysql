
-- =============================================
-- LeetCode 1757: Recyclable and Low Fat Products
-- Difficulty: Easy
-- Topic: SELECT, WHERE, AND
-- Database: MySQL
-- =============================================

-- Problem:
-- Find the product_id of products that are
-- BOTH low fat AND recyclable.

-- Approach:
-- 1. SELECT product_id: Return only product_id.
-- 2. FROM Products: Read data from Products table.
-- 3. WHERE low_fats = 'Y': Select low-fat products.
-- 4. AND recyclable = 'Y': Also select recyclable products.
--
-- AND means BOTH conditions must be TRUE.

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
AND recyclable = 'Y';


-- =============================================
-- Example:
--
-- Products Table:
--
-- +------------+-----------+-------------+
-- | product_id | low_fats  | recyclable  |
-- +------------+-----------+-------------+
-- | 1          | Y         | N           |
-- | 2          | Y         | Y           |
-- | 3          | N         | Y           |
-- | 4          | Y         | Y           |
-- +------------+-----------+-------------+
--
-- Output:
--
-- +------------+
-- | product_id |
-- +------------+
-- | 2          |
-- | 4          |
-- +------------+
--
-- =============================================
-- REVISION:
--
-- WHERE = Filters rows based on a condition.
-- AND   = Both conditions must be TRUE.
-- OR    = At least one condition must be TRUE.
-- =============================================
