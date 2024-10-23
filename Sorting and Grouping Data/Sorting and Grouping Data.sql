select substring(country_name,1,3) from country;

select concat(fname," ",lname) as fullname from persons;

select count(distinct(country_name)) as count  from persons;

select max(population) as MaximumPopulation from country;

select min(population) as MinimumPopulation from persons;
select * from country;
insert into persons values(11,"Sam",null,2054000,4,11,"Italy");
insert into persons values(12,"Alex",null,3754000,3,12,"Morocco");
insert into persons values(13,"John",null,1554000,3,13,"Morocco");

select count(lname) from persons;
select count(*) as TotalRows from persons;

select population from country limit 3;

select country_name from country order by rand() limit 3;

select * from persons order by rating desc;

select country_name,sum(population) as TotalPopulation from persons group by country_name;

select country_name from persons where population>50000;

select country_name,count(*) as persons,avg(rating) as AverageRating from persons 
group by country_name having count(*)>2 order by AverageRating asc;

select * from country;

insert into country values(11,"Italy",2054000,"301K km²");
insert into country values(12,"Morocco",3754000,"710K km²");
insert into country values(13,"Morocco",1554000,"710K km²");



/*
insert into persons values(11,"Sam",null,2054000,4,11,"Italy");
insert into persons values(12,"Alex",null,3754000,3,12,"Morocco");
*/
