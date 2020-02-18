SELECT 
    MAX(sk.speed) AS max_speed, t.name
FROM
    towns AS t
        LEFT JOIN
    stadiums AS st ON t.id = st.town_id
        LEFT JOIN
    teams AS te ON te.stadium_id = st.id
        LEFT JOIN
    players AS p ON p.team_id = te.id
        LEFT JOIN
    skills_data AS sk ON p.skills_data_id = sk.id
WHERE
    te.name != ('Devify')
GROUP BY t.name
ORDER BY max_speed DESC , t.name;