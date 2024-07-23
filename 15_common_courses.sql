USE devcamp_sql_project;

SELECT
  students_name AS 'Student name',
  professors_name AS 'Professor name',
  COUNT(*) AS Common_Courses
FROM grades g
JOIN students s
ON s.students_id = g.grades_student_id
JOIN courses c
ON c.courses_id = g.grades_course_id
JOIN professors p
ON p.professors_id = c.courses_professor_id
GROUP BY students_name, professors_name
HAVING COUNT(*) > 1
ORDER BY Common_Courses DESC
LIMIT 10;