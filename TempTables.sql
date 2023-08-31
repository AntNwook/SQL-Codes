-- temp tables

create temporary table temp_employee (
employeeID int,
Jobtitle varchar(100),
Salary int
);

select * from temp_employee;

insert into temp_employee values (
'1001', 'HR', '45000');

insert into temp_employee 
select *
from EmployeeSalary;


create temporary table temp_employee2 (
Jobtitle varchar (50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int);

insert into temp_employee2
select Jobtitle, Count(jobtitle), Avg(age), Avg(salary)
from EmployeeDemographics demo
join EmployeeSalary sal
on demo.employeeID = sal.employeeID
group by Jobtitle;

select * from temp_employee2;
