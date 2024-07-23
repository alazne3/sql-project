USE devcamp_sql_project;

SELECT professors_name AS 'Professors name', AVG(grades_grade) AS 'Average grade'
FROM grades g
JOIN courses c
ON c.courses_id = g.grades_course_id
JOIN professors p
ON p.professors_id = c.courses_professor_id
GROUP BY professors_name
ORDER BY professors_name;