SELECT 
	`employee_id` as "id", 
    `first_name` as "First Name", 
	`last_name` as "Last Name",
    `middle_name` as "Middle Name",
    `job_title` as "Job Title",
    `department_id` as "Dept ID",
    `manager_id` as "Mngr ID",
    `hire_date` as "Hire Date",
    `salary`,
    `address_id`
    from employees
    where `job_title` = "Sales Representative";