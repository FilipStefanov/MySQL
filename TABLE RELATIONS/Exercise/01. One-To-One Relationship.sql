CREATE DATABASE table_relations_exercise;

USE table_relations_exercise;

CREATE TABLE `persons`(
	`person_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(50) NOT NULL,
    `salary` DECIMAL(10, 2)
	);
    
CREATE TABLE `passports`(
	`passport_id` INT PRIMARY KEY NOT NULL,
    `passport_number` VARCHAR(50) UNIQUE
    );
    
ALTER TABLE `persons`
ADD COLUMN `passport_id` INT UNIQUE NOT NULL,
ADD CONSTRAINT fk_employees_passports 
FOREIGN KEY (`passport_id`) 
REFERENCES `passports`(`passport_id`);

INSERT INTO `passports` (`passport_id`, `passport_number`) 
VALUES  (101, 'N34FG21B'), 
		(102, 'K65LO4R7'), 
        (103, 'ZE657QP2');
      
INSERT INTO `persons` (`first_name`, `salary`, `passport_id`)
VALUES  ('Roberto', 43300.00, 102),
		('Tom', 56100.00, 103),
        ('Yana', 60200.00, 101);