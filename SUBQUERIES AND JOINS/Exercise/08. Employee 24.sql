SELECT 
    e.`employee_id`,
    e.`first_name`,
    (CASE
        WHEN (p.`start_date`) >= '2005-01-01' THEN NULL
        ELSE p.`name`
    END) AS `project_name`
FROM
    employees AS e
        INNER JOIN
    `employees_projects` AS ep ON e.`employee_id` = ep.`employee_id`
        LEFT JOIN
    projects AS p ON ep.`project_id` = p.`project_id`
WHERE
    DATE(p.`start_date`) >= 2005
        AND e.`employee_id` = 24
ORDER BY `project_name` ASC;