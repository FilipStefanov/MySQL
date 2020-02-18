SELECT 
    co.name,
    COUNT(pl.id) AS total_count_of_players,
    SUM(pl.salary) AS total_sum_of_salaries
FROM
    countries AS co
        LEFT JOIN
    towns AS t ON t.country_id = co.id
        LEFT JOIN
    stadiums AS st ON t.id = st.town_id
        LEFT JOIN
    teams AS te ON te.stadium_id = st.id
        LEFT JOIN
    players AS pl ON pl.team_id = te.id
GROUP BY co.name
ORDER BY total_count_of_players DESC , co.name;
