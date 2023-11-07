# Write your MySQL query statement below

SELECT customer_id FROM Customer GROUP BY 1 
HAVING COUNT(distinct product_key) = (SELECT COUNT(distinct product_key) FROM Product);