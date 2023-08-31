DELETE from EmployeeDemographics
where employeeID = 1009;

select * from EmployeeDemographics;

insert into EmployeeDemographics values 
(1009, 'Jim', 'D', 58, 'Male');

select * from EmployeeDemographics;

update EmployeeDemographics
SET age = 65
where employeeID = 1009;


select * from EmployeeDemographics;