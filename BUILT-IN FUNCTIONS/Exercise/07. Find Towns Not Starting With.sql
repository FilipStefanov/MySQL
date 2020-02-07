SELECT 
    `town_id`, `name`
FROM
    towns
WHERE
    NOT SUBSTRING(`name`, 1, 1) IN ('r' , 'b', 'd')
ORDER BY `name`;