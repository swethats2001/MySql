create database Sales;
use Sales;
create table Orders(
  OrderId int auto_increment primary key,
  CustomerName varchar(30) not null,
  ProductCategory varchar(30) not null,
  Ordered_item varchar(30) not null,
  ContactNo int unique
);
desc Orders;

ALTER TABLE Orders add column Order_quantity int;

rename table Orders to SalesOrders;
desc SalesOrders;

alter table salesorders modify ContactNo varchar(30);

INSERT INTO SalesOrders (CustomerName, ProductCategory, Ordered_item, ContactNo, Order_quantity) VALUES
('John Doe', 'Electronics', 'Smartphone', '1234567890', 2),
('Jane Smith', 'Clothing', 'Jacket', '0987654321', 1),
('Alice Johnson', 'Home Appliances', 'Microwave', '1122334455', 3),
('Bob Brown', 'Furniture', 'Sofa', '5566778899', 1),
('Chris Green', 'Books', 'Novel', '6677889900', 5),
('Eve White', 'Groceries', 'Apples', '7788990011', 10),
('David Black', 'Toys', 'Action Figure', '8899001122', 2),
('Sophia Gray', 'Sports', 'Tennis Racket', '9900112233', 1),
('Michael Blue', 'Automotive', 'Car Tires', '1100223344', 4),
('Olivia Purple', 'Jewelry', 'Necklace', '2211334455', 1);
select * from salesorders;

select CustomerName,Ordered_item from salesorders;

update salesorders set Ordered_item= "Frying pan" where OrderId = 23;
 drop table salesorders;
 show tables;
