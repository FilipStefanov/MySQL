SELECT 
    `department_id`,
    (SELECT DISTINCT
            `e2`.`salary`
        FROM
            employees e2
        WHERE
            e2.department_id = e.department_id
        ORDER BY e2.salary DESC
        LIMIT 2 , 1) AS `third_highest_salary`
FROM
    employees AS `e`
GROUP BY department_id
HAVING `third_highest_salary` IS NOT NULL;