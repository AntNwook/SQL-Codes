-- Partition By

select firstname, lastname, gender, salary, count(gender) over (partition by gender)as totalgender from EmployeeDemographics dem
join EmployeeSalary sal
on dem.employeeID = sal.employeeID;