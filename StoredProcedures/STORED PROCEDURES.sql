delimiter $$
create procedure entry(in id int,in fname char(25),in lname char(25),in sal int,in jdate datetime,in dept char(25))
begin
insert into worker values(id,fname,lname,sal,jdate,dept);
end $$
delimiter ;
call entry(1, 'John', 'Doe', 50000, '2020-01-15 09:00:00', 'HR');
call entry(2, 'Jane', 'Smith', 60000, '2019-02-23 10:30:00', 'Finance');
call entry(3, 'Mike', 'Johnson', 45000, '2021-03-12 11:00:00', 'IT');
call entry(4, 'Emily', 'Davis', 70000, '2018-07-11 08:45:00', 'Sales');
call entry(5, 'David', 'Lee', 53000, '2019-10-05 09:30:00', 'Finance');
call entry(6, 'Anna', 'Wilson', 62000, '2020-12-20 10:45:00', 'IT');
call entry(7, 'Chris', 'Brown', 55000, '2017-09-14 09:15:00', 'Marketing');
call entry(8, 'Sophia', 'Martinez', 49000, '2021-01-25 08:00:00', 'HR');
call entry(9, 'James', 'Taylor', 58000, '2016-04-12 07:30:00', 'Sales');
call entry(10, 'Olivia', 'Harris', 61000, '2019-08-16 11:15:00', 'Marketing');
select * from worker;

delimiter $$
create procedure retrievesal(in id int,out p_salary int)
begin
select Salary into p_salary from worker where Worker_Id=id;
end $$
delimiter ;
call retrievesal(1,@s);
select @s as Salary_of_worker;

set sql_safe_updates=0;
delimiter $$
create procedure updatedept1(in id int,in dept char(25))
begin
update worker set Department=dept where Worker_Id=id;
end $$
delimiter ;
call updatedept1(3,'Marketing');
select * from worker where Worker_Id=3;

delimiter $$
create procedure countdept2(in dept char(25),out p_worker_count int)
begin
select count(Department) as Workers_Count from worker where Department=dept;
end $$
delimiter ;
call countdept2('Finance',@c);

select * from worker;


delimiter $$
create procedure AvgSalary1(in dept char(25),out p_avgsalary int)
begin
select Department,avg(Salary) as AverageSalary from worker group by Department having Department=dept;
end $$
delimiter ;
call AvgSalary1('IT',@av);
