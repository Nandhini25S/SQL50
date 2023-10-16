# Write your MySQL query statement below

WITH poor_query_percentage AS
(SELECT query_name, rating/position AS ratio, 
    CASE WHEN rating<3 THEN 1 ELSE 0 END AS ratings FROM Queries)

SELECT query_name, ROUND(AVG(ratio),2) AS quality, 
    ROUND((SUM(ratings)/COUNT(query_name))*100,2) AS poor_query_percentage
FROM poor_query_percentage prp
GROUP BY 1;