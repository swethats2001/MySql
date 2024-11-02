use d41;
select country_name,count(country_name) as No_of_persons from country group by country_name;
select * from country; 

select country_name,count(country_name) as No_of_persons from country group by country_name order by No_of_persons desc;

select country_name,avg(rating) as AvgRating from persons group by country_name having AvgRating>3;

select country_name from persons where rating=(select rating from persons where country_name="USA");

select country_name from persons where population>(select avg(population) from persons);

create database product;
use product;
create table customer(
  customerId int primary key,
  fname varchar(30),
  lname varchar(30),
  email varchar(50),
  phno varchar(10),
  address varchar(50),
  city varchar(30),
  state varchar(30),
  zipCode varchar(6),
  country varchar(30)
);

INSERT INTO customer (customerId, fname, lname, email, phno, address, city, state, zipCode, country)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890', '123 Maple St', 'Springfield', 'Illinois', '62701', 'USA'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '2345678901', '456 Oak St', 'Greenfield', 'California', '93927', 'USA'),
(3, 'Carlos', 'Mendez', 'carlos.mendez@example.com', '3456789012', '789 Pine Ave', 'Austin', 'Texas', '73301', 'USA'),
(4, 'Amina', 'Khan', 'amina.khan@example.com', '4567890123', '1010 Elm St', 'Mumbai', 'Maharashtra', '400001', 'India'),
(5, 'Li', 'Wei', 'li.wei@example.com', '5678901234', '202 Birch Rd', 'Beijing', 'Beijing', '100000', 'China'),
(6, 'Maria', 'Garcia', 'maria.garcia@example.com', '6789012345', '303 Cedar Ln', 'Madrid', 'Madrid', '28001', 'Spain'),
(7, 'Hans', 'Schmidt', 'hans.schmidt@example.com', '7890123456', '404 Walnut St', 'Berlin', 'Berlin', '10115', 'Germany'),
(8, 'Emma', 'Brown', 'emma.brown@example.com', '8901234567', '505 Spruce Blvd', 'Toronto', 'Ontario', 'M5A1A1', 'Canada'),
(9, 'Ivan', 'Ivanov', 'ivan.ivanov@example.com', '9012345678', '606 Fir St', 'Moscow', 'Moscow', '101000', 'Russia'),
(10, 'Yuki', 'Tanaka', 'yuki.tanaka@example.com', '0123456789', '707 Chestnut Ave', 'Tokyo', 'Tokyo', '100000', 'Japan'),
(11, 'Lina', 'Davis', 'lina.davis@example.com', '1231231234', '808 Redwood St', 'Sydney', 'New South Wales', '2000', 'Australia'),
(12, 'Ahmed', 'Ali', 'ahmed.ali@example.com', '2342342345', '909 Maple Dr', 'Cairo', 'Cairo', '11511', 'Egypt'),
(13, 'Fatima', 'Zara', 'fatima.zara@example.com', '3453453456', '101 Cherry St', 'Casablanca', 'Casablanca-Settat', '20100', 'Morocco'),
(14, 'Sofia', 'Lopez', 'sofia.lopez@example.com', '4564564567', '202 Banyan St', 'Buenos Aires', 'Buenos Aires', 'C1000', 'Argentina'),
(15, 'Nina', 'Petrov', 'nina.petrov@example.com', '5675675678', '303 Willow Ln', 'Sofia', 'Sofia City Province', '1000', 'Bulgaria');

select * from customer;

 create view customer_info as
 select concat(fname," ",lname) as fullname,email from customer;
 select * from customer_info;
 
create view us_customers as
select concat(fname," ",lname) as fullname from customer where country="USA";
select * from us_customers;
 
create view customer_details as
select concat(fname," ",lname) as fullname,email,phno,state from customer;
select * from customer_details;
 
 set sql_safe_updates=0;
 update customer_details set phno="2468101214" where state="California";
 
select state,count(state) as no_of_customers from customer group by state having no_of_customers>5;
 
select state,count(state) as no_of_customers from customer_details group by state;
  
select * from customer_details order by state asc;
 
 