DELIMITER //

CREATE FUNCTION unf_count_emlpoyees_by_town(town_name VARCHAR(40))
RETURNS DOUBLE 
	BEGIN 
			DECLARE e_count DOUBLE;
            SET e_count := 
            (SELECT count(employee_id) from employees as e
            INNER JOIN addresses as a on e.address_id = a.address_id
            INNER JOIN towns as t ON a.town_id = t.town_id
            where t.name = town_name);
            RETURN e_count;
END//

SELECT unf_count_emlpoyees_by_town('Seattle');
