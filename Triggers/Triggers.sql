create table teachers(id int,tname varchar(50),subject varchar(50),experience int,salary int);
INSERT INTO teachers (id, tname, subject, experience, salary) VALUES
(1, 'Alice Johnson', 'Mathematics', 5, 45000),
(2, 'Bob Smith', 'Physics', 8, 52000),
(3, 'Catherine Brown', 'Chemistry', 3, 40000),
(4, 'David Wilson', 'Biology', 6, 47000),
(5, 'Emma Davis', 'English', 10, 60000),
(6, 'Frank Thomas', 'History', 4, 43000),
(7, 'Grace Lee', 'Computer Science', 7, 55000),
(8, 'Henry Clark', 'Geography', 2, 39000);
insert into teachers (id, tname, subject, experience, salary) values (11, 'Laura Parker', 'Physics', 12, 65000);
insert into teachers (id, tname, subject, experience, salary) values (12, 'Mark Evans', 'Mathematics', 15, 70000);
insert into teachers (id, tname, subject, experience, salary) values (13, 'Nina Patel', 'English', 11, 62000);

delimiter $$

create trigger before_insert_teacher
before insert on teachers
for each row
begin
    -- Check if the salary is less than zero
    if new.salary < 0 then
        signal sqlstate '45000' 
        set message_text = 'Salary cannot be negative';
    end if;
end $$

delimiter ;

insert into teachers (id, tname, subject, experience, salary) values (9, 'John Doe', 'Art', 3, -10000);

create table teacher_log (log_id int auto_increment primary key,teacher_id int,action varchar(50),timestamp datetime);
delimiter $$
create trigger after_insert_teacher
after insert on teachers
for each row
begin
    -- insert a log entry into teacher_log when a new teacher is added
    insert into teacher_log (teacher_id, action, timestamp)
    values (new.id, 'insert', now());
end $$
delimiter ;
insert into teachers (id, tname, subject, experience, salary) values (9, 'John Doe', 'Art', 3, 50000);
select * from teacher_log;

delimiter $$
create trigger before_delete_teacher
before delete on teachers
for each row
begin
    -- check if the teacher's experience is greater than 10 years
    if old.experience > 10 then
        signal sqlstate '45000' 
        set message_text = 'cannot delete a teacher with more than 10 years of experience';
    end if;
end $$
delimiter ;
set sql_safe_updates=0;
delete from teachers where experience = 15;

delimiter $$
create trigger after_delete_teacher
after delete on teachers
for each row
begin
    -- insert a log entry into teacher_log when a teacher is deleted
    insert into teacher_log (teacher_id, action, timestamp)
    values (old.id, 'delete', now());
end $$
delimiter ;
delete from teachers where id = 9;


