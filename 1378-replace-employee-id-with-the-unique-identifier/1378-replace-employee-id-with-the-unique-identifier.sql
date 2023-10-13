# Write your MySQL query statement below

SELECT COALESCE(unique_id, NULL) AS unique_id,name 
FROM Employees e LEFT JOIN EmployeeUNI eu ON e.id=eu.id;