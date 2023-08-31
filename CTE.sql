-- CTE 
with CTE_employee as 
(select firstname, lastname, gender, salary, count(gender) over (partition by gender)as totalgender, avg(salary) over (partition by Gender) as AvgSalary 
from EmployeeDemographics dem
join EmployeeSalary sal
on dem.employeeID = sal.employeeID
 where salary > 60000
 )
 
 select * from CTE_employee;