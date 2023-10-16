# Write your MySQL query statement below

WITH immediate_orders AS
(SELECT customer_id, MIN(order_date) AS min_date FROM Delivery GROUP BY 1)


SELECT ROUND(SUM(CASE WHEN order_date=customer_pref_delivery_date THEN 1 ELSE 0 END)/COUNT(distinct i.customer_id)*100,2) AS immediate_percentage
FROM Delivery d JOIN immediate_orders i 
    ON d.customer_id=i.customer_id AND d.order_date=i.min_date;