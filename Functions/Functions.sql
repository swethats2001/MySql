alter table persons add DOB date;
update persons set DOB='1999-07-08' where id=13;

delimiter $$
create function AgePerson(dob date)
returns int
deterministic
begin
    return year(curdate()) - year(dob);
end $$
delimiter ;

select count(*) from persons;
select * from persons;
desc persons;




select id,AgePerson(DOB) as age from persons;

select country_name,length(country_name) as length from country group by country_name;

select country_name,substr(country_name,1,3)from country group by country_name;

select country_name,upper(country_name),lower(country_name) from country group by country_name;









