CREATE TABLE departments 
(    
department_id SERIAL PRIMARY KEY,    
department_name VARCHAR(50) NOT NULL UNIQUE
);


-- Inserting records into the departments table
insert into departments(department_name) values ('Sales'),('HR'),('Customer Care');

--View the records of departments table
Select * from departments;

-- creating employee table
CREATE TABLE employees (    
employee_id SERIAL PRIMARY KEY,                 
first_name VARCHAR(50) NOT NULL,                            
last_name VARCHAR(50) NOT NULL,                            
 email VARCHAR(100) UNIQUE,                                  
 hire_date DATE ,                         
salary DECIMAL(10, 2)  default 10000 CHECK (salary > 0),                    
department_id INT,                                        
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- insert records into the employees table
insert into employees(first_name,last_name,email,hire_date,salary,
department_id) values
('Diya','Aggarwal','diya@gmail.com','2024-06-24',24000,1),
('Soniya','Mehra','Soniya@gmail.com','2024-06-20',13000,2),
('Riya','Aggarwal','riya@gmail.com','2024-06-24',24000,1),
('Rohan','Mehra','Rohan@gmail.com','2024-07-20',68000,2),
('Atul','Singh','atul@gmail.com','2024-08-18',43000,3);

--view all the records
select * from employees;

-- Arithmetic Operations
Select Employee_id ,First_name ,Salary ,Salary+1000 as New_Salary from Employees;
Select Employee_id ,First_name ,Salary ,Salary-1000 as New_Salary from Employees;
Select Employee_id ,First_name ,Salary ,Salary*100 as New_Salary from Employees;
Select Employee_id ,First_name ,Salary ,(Salary*20)/100 as New_Salary from Employees;

--Comparison Operations
Select * from Employees where department_id=1;
Select * from Employees where department_id<>1;
Select * from Employees where Salary<50000;
Select * from Employees where Salary>10000;
Select * from Employees where Salary<=15000;
Select * from Employees where Salary>= 15000;

--Logical Operations
Select * from Employees where salary> 1500 and department_id=1;
Select * from Employees where salary> 1500 or  department_id=1;
Select * from Employees where not salary =1600;
Select * from Employees where hire_date is null;
Select * from Employees where hire_date is not null;
Select * from Employees where salary between 18000 and 50000;
Select * from Employees where salary not between 20000 and 40000;
Select * from employees where salary in (10000,17000,15250,67000);
Select * from Employees where salary not in (10000,17000,15250,67000);

--Like Operator
Select * from Employees where first_name like 'D%';
Select * from Employees where first_name like '%D%';
Select * from Employees where first_name like '%D';
Select * from Employees where first_name like '__y_';
Select * from Employees where first_name like '_____';

--Order by 
Select * from Employees order by Salary;
Select * from Employees order by Salary desc;



