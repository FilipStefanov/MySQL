DELIMITER //
CREATE FUNCTION udf_stadium_players_count (stadium_name VARCHAR(30))
	RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE player_count INT;
    
    SET player_count := (
		SELECT count(p.id) as count
		From stadiums as st
        left join teams as t
        on t.stadium_id = st.id
        LEFT JOIN players as p
        on p.team_id = t.id
        where st.name = stadium_name        
        );
        
	IF player_count IS NULL
    THEN SET player_count := 0;
    END IF;
    
    RETURN player_count;
END 



//

select udf_stadium_players_count('Linklinks') as count;