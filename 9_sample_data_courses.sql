USE devcamp_sql_project;

DROP PROCEDURE IF EXISTS courses_data;
DELIMITER //
CREATE PROCEDURE courses_data()
BEGIN
  DECLARE i INT DEFAULT 1; 
  WHILE (i <= 14) DO
    INSERT INTO courses (courses_name, courses_professor_id)
    VALUES (CONCAT('Course ', i), (SELECT professors_id FROM professors ORDER BY RAND() LIMIT 1));
    SET i = i+1;
END WHILE;
END;
//  

CALL courses_data();