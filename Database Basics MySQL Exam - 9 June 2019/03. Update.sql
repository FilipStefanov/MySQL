SELECT 
    *
FROM
    employees_Clients
WHERE
    employee_id = client_id;

CREATE VIEW v_get_employee_id_with_lowest_clients_count AS
    SELECT 
        employee_id
    FROM
        employees_clients
    GROUP BY employee_id
    ORDER BY COUNT(employee_id) , employee_id
    LIMIT 1;
    
UPDATE employees_clients 
SET 
    employee_Id = (SELECT 
            *
        FROM
            v_get_employee_id_with_lowest_clients_count)
WHERE
    client_id = employee_id;
    
