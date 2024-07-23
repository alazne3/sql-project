USE devcamp_sql_project;

CREATE TABLE `devcamp_sql_project`.`grades` (
  `grades_id` INT NOT NULL AUTO_INCREMENT,
  `grades_course_id` INT NOT NULL,
  `grades_student_id` INT NOT NULL,
  `grades_grade` DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE INDEX `grades_id_UNIQUE` (`grades_id` ASC) VISIBLE);