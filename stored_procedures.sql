-- Stored procedures 

delimiter //
create procedure test()
begin
select * 
from employeedemographics;
end //
Delimiter ;

call test();

delimiter // 

create procedure temp_em()
begin
 drop table if exists temp_employee2;
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

End //

delimiter ;

call temp_em();