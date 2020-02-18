DELIMITER //
CREATE PROCEDURE udp_find_playmaker (min_dribble_points  int,team_name varchar(45))
	begin	
		SELECT
			concat(p.first_name, ' ', p.last_name) as full_name,
            p.age,
            p.salary,
            sk.dribbling,
            sk.speed,
            t.name
            
		from players as p
        LEFT JOIN skills_data as sk
        on sk.id = p.skills_data_id
        LEFT JOIN teams as t
        ON t.id = p.team_id
		where 	sk.dribbling > min_dribble_points
        and t.name = team_name
        and sk.speed > (SELECT 
						AVG(sk.speed)
						FROM
						skills_data AS sk
							INNER JOIN
						players AS p ON p.skills_data_id = sk.id)
                        ORDER BY sk.speed desc
						LIMIT 1
						;
	end

//
CALL udp_find_playmaker (20, 'Skyble');