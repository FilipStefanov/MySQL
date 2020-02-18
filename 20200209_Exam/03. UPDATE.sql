UPDATE coaches c 
SET 
    c.coach_level = coach_level + 1
WHERE
    c.first_name LIKE CONCAT('A', '%')
        AND (SELECT 
            COUNT(pc.player_id)
        FROM
            players_coaches AS pc
        WHERE
            pc.coach_id = c.id
        GROUP BY pc.coach_id) >= 1;
	