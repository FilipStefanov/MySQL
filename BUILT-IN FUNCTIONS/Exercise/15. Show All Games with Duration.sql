SELECT 
    g.name,
    CASE
        WHEN
            EXTRACT(HOUR FROM start) >= 0
                AND EXTRACT(HOUR FROM g.start) < 12
        THEN
            'Morning'
        WHEN
            EXTRACT(HOUR FROM start) >= 12
                AND EXTRACT(HOUR FROM g.start) < 18
        THEN
            'Afternoon'
        WHEN
            EXTRACT(HOUR FROM start) >= 18
                AND EXTRACT(HOUR FROM g.start) < 24
        THEN
            'Evening'
    END AS 'Part Of The Day',
    CASE
        WHEN g.duration <= 3 THEN 'Extra Short'
        WHEN g.duration BETWEEN 3 AND 6 THEN 'Short'
        WHEN g.duration BETWEEN 6 AND 10 THEN 'Long'
        ELSE 'Extra Long'
    END AS Duration
FROM
    games g;

            