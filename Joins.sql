-- Joins
select * from EmployeeDemographics
inner join EmployeeSalary 
on EmployeeDemographics.employeeID = EmployeeSalary.employeeID;

select * from EmployeeDemographics
Left join EmployeeSalary 
on EmployeeDemographics.employeeID = EmployeeSalary.employeeID;

select EmployeeDemographics.employeeID, firstname, lastname, jobtitle, salary from EmployeeDemographics
inner join EmployeeSalary 
on EmployeeDemographics.employeeID = EmployeeSalary.employeeID
where firstname <> 'Jim'
order by Salary DESC;


select jobtitle, AVG(salary) from EmployeeDemographics
inner join EmployeeSalary 
on EmployeeDemographics.employeeID = EmployeeSalary.employeeID
where Jobtitle = 'PQI'
Group by Jobtitle;

