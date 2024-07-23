USE devcamp_sql_project;

DROP PROCEDURE IF EXISTS grades_data;
DELIMITER //
CREATE PROCEDURE grades_data()
BEGIN
  DECLARE i INT DEFAULT 1; 
  WHILE (i <= 500) DO
    INSERT INTO grades (grades_course_id, grades_student_id, grades_grade)
    VALUES (
      (SELECT courses_id FROM courses ORDER BY RAND() LIMIT 1),
      (SELECT students_id FROM students ORDER BY RAND() LIMIT 1),
      (RAND()*10)
      );
    SET i = i+1;
END WHILE;
END;
//  

CALL grades_data();