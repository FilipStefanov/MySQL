update employees
set salary = salary + (salary * 0.1)
where job_title = "Therapist";

Select salary
from employees
order by salary ASC;

