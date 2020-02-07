SELECT 
    `first_name`, `last_name`, `department_id`
FROM
    employees as e
WHERE
   e.salary > (SELECT 
            AVG(sub.salary)
        FROM
            employees AS sub
        GROUP BY sub.department_id
        HAVING e.department_id = sub.department_id)
ORDER BY department_id , employee_id
LIMIT 10;