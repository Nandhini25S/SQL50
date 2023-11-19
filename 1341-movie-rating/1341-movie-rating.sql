# Write your MySQL query statement below

(SELECT name AS results
 FROM Users s JOIN MovieRating mr ON s.user_id=mr.user_id 
 GROUP BY s.user_id ORDER BY COUNT(1) DESC, name LIMIT 1
)
UNION ALL
(SELECT title AS results
 FROM Movies m JOIN MovieRating mr ON m.movie_id=mr.movie_id AND created_at LIKE '2020-02%'
 GROUP BY m.movie_id ORDER BY AVG(rating) DESC, title LIMIT 1);