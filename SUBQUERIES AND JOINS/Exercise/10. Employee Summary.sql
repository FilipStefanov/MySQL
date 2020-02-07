SELECT 
    e.`employee_id`,
    CONCAT(e.`first_name`, ' ', e.`last_name`) AS `employee_name`,
    CONCAT(e2.`first_name`, ' ', e2.`last_name`) AS `manager_name`,
    d.`name` AS department_name
FROM
    employees AS e
        LEFT JOIN
    employees AS e2 ON e.`manager_id` = e2.`employee_id`
        LEFT JOIN
    departments AS d ON e.`department_id` = d.`department_id`
WHERE
    NOT e.`manager_id` IS NULL
ORDER BY e.`employee_id` ASC
LIMIT 5;