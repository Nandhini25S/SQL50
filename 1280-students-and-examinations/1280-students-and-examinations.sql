# Write your MySQL query statement below

SELECT s.student_id, s.student_name, st.subject_name, 
    COUNT(e.student_id) AS attended_exams
FROM Students s CROSS JOIN Subjects st 
    LEFT JOIN Examinations e ON st.subject_name=e.subject_name AND s.student_id=e.student_id
GROUP BY 1,2,3
ORDER BY 1,2