use d41;
create table managers(
 manager_id int not null primary key,
 first_name varchar(100) not null,
 last_name varchar(100),
 DOB date,
 age int not null check(age>30),
 last_update date,
 gender char(1),
 department varchar(50),
 salary varchar(10) not null
);

INSERT INTO managers (manager_id, first_name, last_name, DOB, age, last_update, gender, department, salary)
VALUES
(1, 'John', 'Doe', '1975-06-15', 48, '2024-10-09', 'M', 'Sales', '75000'),
(2, 'Jane', 'Smith', '1982-11-20', 41, '2024-10-09', 'F', 'Marketing', '80000'),
(3, 'Alice', 'Johnson', '1970-02-10', 54, '2024-10-09', 'F', 'HR', '70000'),
(4, 'Bob', 'Brown', '1983-03-25', 41, '2024-10-09', 'M', 'IT', '85000'),
(5, 'Chris', 'Green', '1978-09-12', 46, '2024-10-09', 'M', 'Finance', '90000'),
(6, 'Eve', 'White', '1980-07-18', 44, '2024-10-09', 'F', 'Operations', '82000'),
(7, 'David', 'Black', '1976-12-05', 47, '2024-10-09', 'M', 'R&D', '95000'),
(8, 'Sophia', 'Gray', '1981-04-22', 43, '2024-10-09', 'F', 'Legal', '88000'),
(9, 'Michael', 'Blue', '1974-01-17', 50, '2024-10-09', 'M', 'Procurement', '72000'),
(10, 'Olivia', 'Purple', '1979-08-03', 45, '2024-10-09', 'F', 'Engineering', '93000');

select * from managers;

select first_name,DOB from managers where manager_id=1;

select first_name,salary*12 as annual_income from managers;

select * from managers where first_name <> 'Eve';
select * from managers where department='IT' and salary > 25000;

#update managers set salary='29000' where manager_id=10;

select * from managers where salary between 10000 and 35000;



