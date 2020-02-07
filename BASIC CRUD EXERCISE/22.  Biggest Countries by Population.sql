SELECT 
    `country_name`, `population`
FROM
    countries
WHERE
    `continent_code` = 'EU'
ORDER BY `population` DESC, `country_name` asc
LIMIT 30;