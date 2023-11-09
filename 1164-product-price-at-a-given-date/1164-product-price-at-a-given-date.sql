# Write your MySQL query statement below

SELECT product_id, IFNULL(price,10) AS price
FROM
 (SELECT distinct product_id FROM Products) AS uniqueProducts
 LEFT JOIN
 (SELECT distinct product_id, 
   FIRST_VALUE(new_price) OVER (PARTITION BY product_id ORDER BY change_date DESC) AS price
  FROM Products WHERE change_date<='2019-08-16') AS final_price USING (product_id);
# ON uniqueProducts.product_id = final_price.product_id