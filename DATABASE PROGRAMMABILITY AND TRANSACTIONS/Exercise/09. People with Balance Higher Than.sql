DELIMITER //
CREATE PROCEDURE usp_get_holders_with_balance_higher_than (number_param DECIMAL(19,4))
BEGIN
		SELECT ah.first_name, ah.last_name
		FROM account_holders as ah
		INNER JOIN accounts as a
		ON a.`account_holder_id` = ah.id
		GROUP BY ah.id
        HAVING sum(a.balance) > number_param
		ORDER BY ah.id;
END
//

call usp_get_holders_with_balance_higher_than(7000);