-- String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower
drop table if exists EmployeeErrors;
create table EmployeeErrors (
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
);

insert into EmployeeErrors values 
('1001   ', 'Jimbo', 'Halbert'),
('  1002','Pamela', 'Beasely'),
('1005', 'TOby', 'Flanderson - Fired');

select * from employeeErrors;

-- Using Trim, LTRIM, RTRIM

select employeeID, trim(employeeID) as IDTRIM from Employeeerrors;

select employeeID, ltrim(employeeID) as IDTRIM from Employeeerrors;

select employeeID, rtrim(employeeID) as IDTRIM from Employeeerrors;

-- Using Replace

select Lastname, Replace(Lastname, '- Fired', '') as LastNameFixed from employeeErrors;

-- Using Substring

select substring(err.firstname,1,3), substring(dem.firstname,1,3)
from employeeErrors err
join EmployeeDemographics dem
on substring(err.firstname, 1,3) = substring(dem.firstname,1,3);

-- Upper and Lower

select firstname, upper(firstname) from Employeeerrors;

select firstname, lower(firstname) from Employeeerrors;


