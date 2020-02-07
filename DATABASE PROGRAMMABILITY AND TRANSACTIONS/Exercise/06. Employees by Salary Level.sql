DELIMITER //

CREATE FUNCTION ufn_get_salary_level(employee_salary DECIMAL(19, 4))
RETURNS VARCHAR(10)
BEGIN
    DECLARE salary_level VARCHAR(10);
    CASE
		WHEN employee_salary < 30000 THEN SET salary_level :='Low';
		WHEN employee_salary <= 50000 THEN SET salary_level := 'Average';
		ELSE SET salary_level := 'High';
	END CASE;
	RETURN salary_level;
END;

CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level VARCHAR(10))
BEGIN
	SELECT e.first_name, e.last_name
    FROM employees e
    WHERE ufn_get_salary_level(e.salary) = salary_level
    ORDER BY e.first_name DESC, e.last_name DESC;
END//
