## Subqueries 

select * from EmployeeSalary;


## subquery in select 
select employeeID, salary,(select AVG(salary) from employeesalary) as AllAvgSalary
from employeesalary;

## subquery in from 

select a.EmployeeID, AllAvgSalary from (select EmployeeID, Salary,Avg(salary) over () as AllAvgSalary from EmployeeSalary) a;

## Subquery in where
select EmployeeID, Jobtitle, Salary
from EmployeeSalary
where EmployeeID in (select EmployeeID from EmployeeDemographics where Age > 30);

