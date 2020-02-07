SELECT 
 `department_id`, COUNT(`id`) AS 'Number of employees'
FROM
    employees AS e
group by e.`department_id`
order by `department_id`;