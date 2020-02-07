DELIMITER //

CREATE FUNCTION udf_client_cards_count(client_name VARCHAR(30))
RETURNS int
DETERMINISTIC
	BEGIN
		DECLARE number_of_cards INT;
      SET number_of_cards := (
      SELECT
			count(c.id)
		FROM cards as c
        INNER JOIN bank_accounts as ba
        ON ba.id = c.bank_account_id
        INNER JOIN clients as cl
        ON ba.client_id = cl.id
        WHERE cl.full_name = client_name
        GROUP BY cl.id
        );		
        RETURN number_of_cards;
    END;      

    
//

SELECT 
    c.full_name, udf_client_cards_count('Baxy David') AS `cards`
FROM
    clients c
WHERE
    c.full_name = 'Baxy David';
