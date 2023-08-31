 insert into EmployeeDemographics values 
(1002, 'Jim', 'Halpert', 30, 'Male'),
(1003, 'Dwight', 'Schrute', 30, 'Male'),
(1004, 'Zach', 'Wood', 37, 'Male'),
(1005, 'Miles', 'Thompson', 45, 'Male'),
(1006, 'Sely', 'Garcia', 30, 'Female'),
(1007, 'Courney', 'Smith', 30, 'Female'),
(1008, 'Steve', 'Rose', 31, 'Male'),
(1009, 'Jim', 'D', 58, 'Male');



select * from EmployeeDemographics;

insert into EmployeeSalary values 
(1001, 'Director', 71000),
(1002, 'Recreation',45000),
(1003, 'salesman', 63000),
(1004, 'Director', 80000),
(1005, 'PQI', 65000),
(1006, 'PQI', 50000),
(1007, 'Ambassador', 50000),
(1008, 'Recreation', 40000),
(1009, 'CEO', 300000);

-- Select Statement, Distinct, Count, AS, Max, Min, Avg

select  distinct(gender) from EmployeeDemographics;



