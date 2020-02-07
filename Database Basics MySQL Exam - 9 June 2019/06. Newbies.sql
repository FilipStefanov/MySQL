SELECT 
    id,
    CONCAT(first_name, ' ', last_name) AS full_name,
    CONCAT('$', salary) 'salary',
    started_on
FROM
    employees
WHERE
    salary >= 100000
        AND DATE(started_on) >= '2018-1-1'
ORDER BY salary DESC , id;
