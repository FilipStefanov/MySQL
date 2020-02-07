DELIMITER //

CREATE PROCEDURE usp_get_holders_full_name()
	BEGIN
		SELECT CONCAT(first_name, ' ', last_name) as full_name
        FROM `account_holders`
        ORDER BY full_name, id;
	END
    //
	
    call usp_get_holders_full_name();