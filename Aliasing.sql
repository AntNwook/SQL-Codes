select concat(firstname,' ', lastname) as Fname from EmployeeDemographics;

Select Demo.employeeID, Sal.Salary from EmployeeDemographics as Demo
join EmployeeSalary as SAl 
on Demo.employeeID = sal.EmployeeID;