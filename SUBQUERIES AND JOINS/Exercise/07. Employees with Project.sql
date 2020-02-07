SELECT 
    e.`employee_id`, e.`first_name`, p.`name` AS 'project_name'
FROM
    employees AS e
        INNER JOIN
    `employees_projects` AS ep ON e.`employee_id` = ep.`employee_id`
        JOIN
    projects AS p ON ep.`project_id` = p.`project_id`
WHERE
    DATE(p.`start_date`) > '2002-8-13'
        AND DATE(p.`end_date`) IS NULL
ORDER BY e.`first_name` , p.`name`
LIMIT 5;