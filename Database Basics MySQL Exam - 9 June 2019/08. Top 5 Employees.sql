SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'name',
    e.started_on,
    COUNT(ec.client_id) AS count
FROM
    employees_clients AS ec
        INNER JOIN
    employees AS e ON e.id = ec.employee_id
GROUP BY ec.employee_id
ORDER BY count DESC , ec.employee_id
LIMIT 5
;