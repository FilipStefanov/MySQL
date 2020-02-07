create view `view_top_paid_employee` 
as 
	select * from `employees`
    order by `salary` desc limit 1;
    
    select * from `view_top_paid_employee`;