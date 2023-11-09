# Write your MySQL query statement below

SELECT a.person_name FROM Queue a JOIN Queue b ON a.turn>=b.turn
GROUP BY 1 HAVING SUM(b.weight)<=1000 ORDER BY SUM(b.weight) DESC LIMIT 1;