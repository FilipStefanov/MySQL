CREATE TABLE `employees_average_salaries` SELECT * FROM
    employees
    where `salary` > 30000;

DELETE FROM `employees_average_salaries`
where `manager_id` = 42;

UPDATE `employees_average_salaries` 
SET 
    `salary` = `salary` + 5000
WHERE
    department_id = 1;
    
SELECT 
    `department_id`, AVG(`salary`) AS 'avg_salary'
FROM
    employees_average_salaries
GROUP BY `department_id`
ORDER BY `department_id` ASC;
