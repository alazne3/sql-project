USE devcamp_sql_project;

ALTER TABLE `devcamp_sql_project`.`courses` 
ADD INDEX `courses_professor_id_idx` (`courses_professor_id` ASC) VISIBLE;
;
ALTER TABLE `devcamp_sql_project`.`courses` 
ADD CONSTRAINT `courses_professor_id`
  FOREIGN KEY (`courses_professor_id`)
  REFERENCES `devcamp_sql_project`.`professors` (`professors_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
ALTER TABLE `devcamp_sql_project`.`grades` 
ADD INDEX `grades_course_id_idx` (`grades_course_id` ASC) VISIBLE,
ADD INDEX `grades_student_id_idx` (`grades_student_id` ASC) VISIBLE;
;
ALTER TABLE `devcamp_sql_project`.`grades` 
ADD CONSTRAINT `grades_course_id`
  FOREIGN KEY (`grades_course_id`)
  REFERENCES `devcamp_sql_project`.`courses` (`courses_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `grades_student_id`
  FOREIGN KEY (`grades_student_id`)
  REFERENCES `devcamp_sql_project`.`students` (`students_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;