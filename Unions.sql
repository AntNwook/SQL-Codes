select employeeID, age, lastname from EmployeeDemographics
union 
select EmployeeID, jobTitle, Salary from EmployeeSalary;