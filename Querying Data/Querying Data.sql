create table country(
	   id int primary key not null,
       country_name varchar(30) not null,
       population int not null,
       area varchar(10) not null);
       
create table persons(
        id int primary key not null,
        fname varchar(30) not null,
        lname varchar(30) not null,
        population int not null,
        rating int not null,
        country_id int not null,
        country_name varchar(30) not null);
        
INSERT INTO country (id, country_name, population, area)
VALUES
(1, 'USA', 331000000, '9.8M km²'),
(2, 'Canada', 38000000, '9.9M km²'),
(3, 'Brazil', 212000000, '8.5M km²'),
(4, 'India', 1390000000, '3.3M km²'),
(5, 'China', 1440000000, '9.6M km²'),
(6, 'Germany', 83000000, '357K km²'),
(7, 'Australia', 25000000, '7.7M km²'),
(8, 'Russia', 145000000, '17.1M km²'),
(9, 'France', 67000000, '643K km²'),
(10, 'Japan', 126000000, '377K km²');

INSERT INTO persons (id, fname, lname, population, rating, country_id, country_name)
VALUES
(1, 'John', 'Doe', 331000000, 4, 1, 'USA'),
(2, 'Jane', 'Smith', 38000000, 5, 2, 'Canada'),
(3, 'Carlos', 'Silva', 212000000, 3, 3, 'Brazil'),
(4, 'Amit', 'Sharma', 1390000000, 5, 4, 'India'),
(5, 'Li', 'Wang', 1440000000, 4, 5, 'China'),
(6, 'Hans', 'Meier', 83000000, 4, 6, 'Germany'),
(7, 'Emma', 'Brown', 25000000, 5, 7, 'Australia'),
(8, 'Ivan', 'Petrov', 145000000, 3, 8, 'Russia'),
(9, 'Pierre', 'Dubois', 67000000, 4, 9, 'France'),
(10, 'Yuki', 'Tanaka', 126000000, 5, 10, 'Japan');

select distinct(country_name) from persons;
alter table persons modify country_name varchar(30);

select concat(fname," ",lname) as fullname from persons;

select * from persons where rating>4;

select country_name from country where population>1000000;

select * from persons where country_name="USA" or rating>4.5;

update persons set country_name="NULL" where id=7;
update country set country_name="NULL" where id=7;
update persons set country_name="UK" where id=3;
update country set country_name="UK" where id=3;
update persons set country_name="Australia" where id=10;
update country set country_name="Australila" where id=10;
update persons set population="645000" where id=8;
update country set population="645000" where id=8;
update persons set population="1800000" where id=2;
update country set population="1800000" where id=2;

select * from persons where country_name="NULL";

select * from persons where country_name in("USA","Canada","UK");

select * from persons where country_name not in("India","Australia");

select country_name from country where population between 500000 and 2000000;

select country_name from country where country_name not like "C%";
