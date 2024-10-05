create database school;
use school;
create table student(Roll_no int,Name varchar(30),Marks int,Grade char(1));
insert into student values(103, 'Alex Johnson', 76, 'B');

select * from student;
set sql_safe_updates=0;
delete from student where Roll_no=103;

alter table student add Contact int;
alter table student drop Grade;
alter table student rename Classten;

select * from Classten;
truncate Classten;
drop table Classten;