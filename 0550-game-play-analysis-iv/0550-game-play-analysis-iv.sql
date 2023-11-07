# Write your MySQL query statement below

WITH logins AS 
(SELECT player_id, MIN(event_date) AS first_login FROM Activity GROUP BY 1),

consecutive_logins AS
(SELECT COUNT(a.player_id) as playerIds FROM logins l INNER JOIN Activity a 
  ON l.player_id=a.player_id AND first_login=DATE_SUB(a.event_date, INTERVAL 1 DAY))

SELECT 
 ROUND((SELECT playerIds FROM consecutive_logins)/(SELECT COUNT(player_id) FROM logins),2) 
 AS fraction;