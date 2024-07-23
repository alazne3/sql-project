USE devcamp_sql_project;

SELECT students_name AS 'Students name', courses_name AS 'Course Name'
FROM grades g
JOIN students s
ON s.students_id = g.grades_student_id
JOIN courses c
ON c.courses_id = g.grades_course_id
ORDER BY students_name, courses_name ASC;