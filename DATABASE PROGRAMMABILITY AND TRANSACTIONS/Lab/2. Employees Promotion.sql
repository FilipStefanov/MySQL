DELIMITER //

CREATE PROCEDURE usp_raise_salaries(department_name VARCHAR(40))
	BEGIN 
		UPDATE employees as e
        INNER JOIN departments as d
        ON e.department_id = d.department_id
        SET salary = salary * 1.05
        WHERE d.name = department_name;
	END//
	
    
    