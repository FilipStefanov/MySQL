DELETE FROM employees 
WHERE
    id NOT IN (SELECT 
        ec.`employee_id`
    FROM
        `employees_clients` AS ec);