USE devcamp_sql_project;

CREATE TABLE `devcamp_sql_project`.`professors` (
  `professors_id` INT NOT NULL AUTO_INCREMENT,
  `professors_name` VARCHAR(100) NOT NULL,
  `professors_email` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`professors_id`),
  UNIQUE INDEX `professors_id_UNIQUE` (`professors_id` ASC) VISIBLE,
  UNIQUE INDEX `professors_email_UNIQUE` (`professors_email` ASC) VISIBLE);