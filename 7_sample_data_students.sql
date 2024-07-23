USE devcamp_sql_project;

DROP PROCEDURE IF EXISTS students_data;
DELIMITER //
CREATE PROCEDURE students_data()
BEGIN
  DECLARE i INT DEFAULT 1; 
  WHILE (i <= 100) DO
    INSERT INTO students (students_name, students_email)
    VALUES (CONCAT('Student ', i), CONCAT('student', i, '@devcamp.com'));
    SET i = i+1;
END WHILE;
END;
//  

CALL students_data();