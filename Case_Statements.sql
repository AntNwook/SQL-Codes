-- Case statements

-- select firstname, lastname, age, 
-- case 
	-- when age > 30 then 'Old'
	-- Else 'Young'
-- end 
-- from EmployeeDemographics
-- order by age;

-- select * from EmployeeDemographics
-- join EmployeeSalary 
-- on EmployeeDemographics.employeeID = EmployeeSalary.employeeID;

-- select count(*) from EmployeeDemographics
-- join EmployeeSalary 
-- on EmployeeDemographics.employeeID = EmployeeSalary.employeeID;

select Firstname, lastname, Jobtitle, Salary, 
case 
when Jobtitle = 'Director' Then salary + (salary * .25)
when Jobtitle = 'PQI' then salary + (salary * .1)
When Jobtitle = 'Ambassador' Then salary + (salary *.05)
else salary + (salary * .02)
end As Raise 
from EmployeeDemographics
join EmployeeSalary 
on EmployeeDemographics.employeeID = EmployeeSalary.employeeID;

