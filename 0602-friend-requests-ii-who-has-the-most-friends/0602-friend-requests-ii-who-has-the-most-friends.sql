# Write your MySQL query statement below

WITH ids AS
(SELECT requester_id AS id FROM RequestAccepted
 UNION ALL SELECT accepter_id AS id FROM RequestAccepted)
 
SELECT id, COUNT(id) AS num FROM ids GROUP BY 1 ORDER BY COUNT(id) DESC LIMIT 1;