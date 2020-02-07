DELIMITER //

CREATE PROCEDURE usp_get_employees_salary_above_35000 ()
	BEGIN 
		SELECT first_name, last_name
        from employees as e
        where salary > 35000
        order by first_name, last_name, employee_id;
END//


call usp_get_employees_salary_above_35000();
