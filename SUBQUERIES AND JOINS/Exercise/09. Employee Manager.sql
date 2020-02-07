SELECT 
    e1.`employee_id`,
    e1.`first_name`,
    e1.`manager_id`,
    e2.`first_name` AS `manager_name`
FROM
    employees AS e1
        LEFT JOIN
    employees AS e2 ON e1.`manager_id` = e2.`employee_id`
WHERE
    e2.`employee_id` IN (3 , 7)
ORDER BY e1.`first_name` ASC;
