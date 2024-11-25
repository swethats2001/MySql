create database library;
use library;

create table branch(
   branch_no int primary key,
   manager_id int,
   branch_address varchar(30),
   contact_no varchar(10));
create table employee(
   emp_id int primary key,
   emp_name varchar(30),
   position varchar(30),
   salary varchar(10),
   branch_no int,
   foreign key(branch_no) references branch(branch_no));
create table books(
   isbn int primary key,
   book_title varchar(30),
   category varchar(30),
   rental_price int,
   status ENUM('yes', 'no') DEFAULT 'yes',
   author varchar(30),
   publisher varchar(30));
create table customer(
   customer_id int primary key,
   customer_name varchar(30),
   customer_address varchar(30),
   reg_date date);
create table issuestatus(
   issue_id int primary key,
   issue_date date,
   issue_cust int,
   foreign key(issue_cust) references customer(customer_id),
   isbn_book int,
   foreign key(isbn_book) references books(isbn));
create table returnstatus(
   return_id int primary key,
   return_cust varchar(30),
   return_bookname varchar(30),
   return_date date,
   isbn_book2 int,
   foreign key(isbn_book2) references books(isbn));
   
INSERT INTO branch (branch_no, manager_id, branch_address, contact_no) VALUES
(1, 101, 'Downtown', '1234567890'),
(2, 102, 'Uptown', '0987654321'),
(3, 103, 'Suburb', '1122334455'),
(4, 104, 'City Center', '5566778899'),
(5, 105, 'Riverside', '6677889900'),
(6, 106, 'Hilltop', '7788990011'),
(7, 107, 'Lakeside', '8899001122'),
(8, 108, 'Beachfront', '9900112233'),
(9, 109, 'Industrial Area', '1100223344'),
(10, 110, 'Old Town', '2211334455');

INSERT INTO employee (emp_id, emp_name, position, salary, branch_no) VALUES
(1, 'Alice Brown', 'Manager', '60000', 1),
(2, 'Bob Smith', 'Salesperson', '30000', 2),
(3, 'Charlie Green', 'Cashier', '25000', 3),
(4, 'David White', 'Assistant', '20000', 4),
(5, 'Ella Black', 'Manager', '60000', 5),
(6, 'Franklin Gray', 'Technician', '35000', 6),
(7, 'Grace Blue', 'Security', '22000', 7),
(8, 'Harry Yellow', 'Cleaner', '18000', 8),
(9, 'Ivy Pink', 'Receptionist', '28000', 9),
(10, 'Jack Purple', 'Salesperson', '30000', 10);

INSERT INTO books (isbn, book_title, category, rental_price, status, author, publisher) VALUES
(1001, 'The Great Gatsby', 'Fiction', 100, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
(1002, '1984', 'Dystopian', 120, 'yes', 'George Orwell', 'Secker & Warburg'),
(1003, 'To Kill a Mockingbird', 'Fiction', 110, 'yes', 'Harper Lee', 'J.B. Lippincott'),
(1004, 'Pride and Prejudice', 'Romance', 90, 'yes', 'Jane Austen', 'T. Egerton'),
(1005, 'Moby Dick', 'Adventure', 100, 'yes', 'Herman Melville', 'Harper & Brothers'),
(1006, 'War and Peace', 'Historical', 150, 'yes', 'Leo Tolstoy', 'The Russian Messenger'),
(1007, 'The Odyssey', 'Epic', 130, 'yes', 'Homer', 'Penguin Classics'),
(1008, 'Hamlet', 'Drama', 80, 'yes', 'William Shakespeare', 'Oxford Press'),
(1009, 'The Catcher in the Rye', 'Fiction', 110, 'yes', 'J.D. Salinger', 'Little, Brown'),
(1010, 'The Hobbit', 'Fantasy', 140, 'yes', 'J.R.R. Tolkien', 'George Allen & Unwin');

INSERT INTO customer (customer_id, customer_name, customer_address, reg_date) VALUES
(1, 'John Doe', '123 Maple St', '2020-01-01'),
(2, 'Jane Smith', '456 Oak Ave', '2021-05-15'),
(3, 'Michael Brown', '789 Pine Rd', '2022-06-20'),
(4, 'Emily Davis', '101 Elm Dr', '2023-03-10'),
(5, 'Chris Wilson', '202 Birch Blvd', '2020-12-12'),
(6, 'Laura Johnson', '303 Cedar Ln', '2021-09-25'),
(7, 'Peter Adams', '404 Walnut Ct', '2022-04-30'),
(8, 'Sophia White', '505 Ash St', '2023-08-15'),
(9, 'James Taylor', '606 Cherry Pkwy', '2020-07-10'),
(10, 'Olivia Martin', '707 Maple Pl', '2021-11-05');

INSERT INTO issuestatus (issue_id, issue_date, issue_cust, isbn_book) VALUES
(1, '2024-01-10', 1, 1001),
(2, '2024-02-15', 2, 1002),
(3, '2024-03-20', 3, 1003),
(4, '2024-04-25', 4, 1004),
(5, '2024-05-30', 5, 1005),
(6, '2024-06-10', 6, 1006),
(7, '2024-07-15', 7, 1007),
(8, '2024-08-20', 8, 1008),
(9, '2024-09-25', 9, 1009),
(10, '2024-10-30', 10, 1010);

INSERT INTO returnstatus (return_id, return_cust, return_bookname, return_date, isbn_book2) VALUES
(1, 'John Doe', 'The Great Gatsby', '2024-01-20', 1001),
(2, 'Jane Smith', '1984', '2024-02-25', 1002),
(3, 'Michael Brown', 'To Kill a Mockingbird', '2024-03-30', 1003),
(4, 'Emily Davis', 'Pride and Prejudice', '2024-04-05', 1004),
(5, 'Chris Wilson', 'Moby Dick', '2024-05-10', 1005),
(6, 'Laura Johnson', 'War and Peace', '2024-06-15', 1006),
(7, 'Peter Adams', 'The Odyssey', '2024-07-20', 1007),
(8, 'Sophia White', 'Hamlet', '2024-08-25', 1008),
(9, 'James Taylor', 'The Catcher in the Rye', '2024-09-30', 1009),
(10, 'Olivia Martin', 'The Hobbit', '2024-10-10', 1010);

#1
select book_title,category,rental_price from books;
#2
select emp_name,salary from employee order by salary desc;
#3
select b.book_title,i.issue_cust from books b inner join issuestatus i where b.isbn=i.isbn_book;
#4
select category,count(*) as totalbooks from books group by category;
#5
select emp_name,position from employee where salary>50000;
#6
select c.customer_name from customer c left join issuestatus i on c.customer_id=i.issue_cust 
where c.reg_date<'2022-01-01' and i.issue_cust is null;
#7
select branch_no,count(emp_id) as totalemployees from employee group by branch_no;
#8
select c.customer_name,i.issue_date from customer c right join issuestatus i on c.customer_id=i.issue_cust 
where i.issue_date between '2023-06-01' and '2023-06-30';
#9
select book_title,category from books where category="Historical";
#10
select branch_no,count(branch_no) as NoOfEmployees from employee group by branch_no having count(branch_no)>5;
#11
select b.branch_address,e.emp_name from branch b left join employee e on b.branch_no=e.branch_no;
#12
select c.customer_name from customer c join issuestatus i on c.customer_id=i.issue_cust join books b on i.isbn_book=b.isbn 
where b.rental_price>25;





   






