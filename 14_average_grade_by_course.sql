USE devcamp_sql_project;

SELECT courses_name AS 'Course Name', AVG(grades_grade) AS Average_Grade
FROM grades g
JOIN courses c
ON c.courses_id = g.grades_course_id
GROUP BY courses_name
ORDER BY Average_Grade ASC;