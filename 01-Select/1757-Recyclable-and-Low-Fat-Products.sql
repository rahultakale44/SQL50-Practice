CREATE DATABASE IF NOT EXISTS sql50_practice;
USE sql50_practice;

DROP TABLE IF EXISTS Products;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    low_fats ENUM('Y', 'N'),
    recyclable ENUM('Y', 'N')
);

INSERT INTO Products (product_id, low_fats, recyclable)
VALUES
(0, 'Y', 'N'),
(1, 'Y', 'Y'),
(2, 'N', 'Y'),
(3, 'Y', 'Y'),
(4, 'N', 'N');

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';