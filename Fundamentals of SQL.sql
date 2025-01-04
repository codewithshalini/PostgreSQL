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
('Diya','Aggarwal','diya@gmail.com','2024-06-24',24000,1);
 
insert into employees(first_name,last_name,email,hire_date,
department_id) values
('Soniya','Mehra','Soniya@gmail.com','2024-06-20',2);

--view all the records
select * from employees;

--modifying the structure of a table
ALTER TABLE employees ADD middle_name VARCHAR(50);

ALTER TABLE employees DROP COLUMN middle_name;

ALTER TABLE employees RENAME TO staff;

Truncate Table Staff;

Drop table staff;

insert into employees(first_name,last_name,email,hire_date,salary,department_id) values('Diya','Aggarwal','diya@gmail.com','2024-06-24',24000,1);
insert into employees(first_name,last_name,email,hire_date,department_id) values
('Soniya','Mehra','Soniya@gmail.com','2024-06-20',2),
('Arti','Singh','arti@gmail.com','2024-07-18',3);

--updating the records
Update employees set salary=60000 where employee_id =1;

Update employees set salary =70000 ,last_name='Saxena' where employee_id=2;

-- Deleting records
Delete from employees where employee_id=1;

--To retrieve data from  specific columns
Select Employee_id,First_name,Salary from Employees;


