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
END //

