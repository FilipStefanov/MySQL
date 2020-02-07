DELIMITER //

CREATE PROCEDURE udp_clientinfo(client_full_name varchar(30))
	BEGIN
		SELECT 
			c.full_name, 
            c.age,
            ba.account_number,
            concat('$' , ba.balance) as 'balance'
		FROM clients as c
        INNER JOIN bank_accounts as ba
        ON c.id = ba.client_id
        WHERE c.full_name = client_full_name;
    END
//

call udp_clientinfo('Hunter Wesgate');

