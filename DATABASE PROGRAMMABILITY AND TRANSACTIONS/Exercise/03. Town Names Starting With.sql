DELIMITER //

CREATE PROCEDURE usp_get_towns_starting_with(starting_letter VARCHAR(50))
BEGIN
	SELECT 
		t.`name`
	FROM
		towns AS t
	WHERE
		t.`name` like (concat(starting_letter, '%'))
	ORDER BY t.`name`;
END//

CALL usp_get_towns_starting_with('B');