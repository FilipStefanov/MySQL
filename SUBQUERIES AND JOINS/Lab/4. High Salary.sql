SELECT 
	COUNT(`employee_Id`) AS `count`
FROM employees as e
WHERE e.`salary` > (SELECT 
    AVG(`salary`)
FROM
    employees);
