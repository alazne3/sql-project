USE devcamp_sql_project;

DROP PROCEDURE IF EXISTS professors_data;
DELIMITER //
CREATE PROCEDURE professors_data()
BEGIN
  DECLARE i INT DEFAULT 1; 
  WHILE (i <= 5) DO
    INSERT INTO professors (professors_name, professors_email)
    VALUES (CONCAT('Professor ', i), CONCAT('professor', i, '@devcamp.com'));
    SET i = i+1;
END WHILE;
END;
//  

CALL professors_data();