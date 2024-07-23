USE devcamp_sql_project;

SELECT students_name AS 'Students name', MAX(grades_grade) AS 'Top grade'
FROM grades g
JOIN students s
ON s.students_id = g.grades_student_id
GROUP BY students_name;