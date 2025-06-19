CREATE DATABASE restaurantdb;


use restaurantdb;

create table customers(
customer_id int primary key auto_increment,
first_name varchar(20),
last_name varchar (20),
email varchar (50) unique,
phone varchar(20),
address varchar (50),
loyalty_points varchar(20)
);

create table orders(
order_id int primary key auto_increment,
order_date date,
total_amount varchar (50),
customer_id INT,
foreign key (customer_id)references customers (customer_id),
payment_method varchar (50)
);


select * from orders;

create  table menu_items(
item_id int primary key auto_increment,
item_name varchar(50),
catergory varchar (50),
price varchar(50),
quantity int
);



create table order_details(
order_id int,
foreign key (order_id)references orders (order_id),
item_id int,
foreign key (item_id)references menu_items (item_id),
Quantity int,
item_name varchar (50),
Price varchar (50)
);




create table order_items(
order_item_id int primary key auto_increment,
order_id int,
item_id int,
foreign key (order_id)references orders(order_id),
foreign key (item_id)references menu_items(item_id),
quantity int,
price varchar (50)
);




create table staff(
staff_id int primary key auto_increment,
first_name varchar(20),
last_name varchar (20),
email varchar (50) unique,
phone varchar(20),
workrole varchar (50)
);






create table feedback (
feedback_id int primary key auto_increment,
customer_id int,
feedback_text char (20),
rating  decimal (2,1)constraint rating check (rating>=0 and rating<=5) ,
foreign key (customer_id)references customers(customer_id),
feedback_date date 
);




-- insert into  customers table 
insert into customers (first_name,last_name,email,phone,address,loyalty_points)
values
('Alice','Johnson','alicej@gmail.com','08012345601','123 Maple St',150),
('Bob','Smith','bobsmith@yahoo.com','08012345602','456 Oak St',120),
('Charlie','Brown','charlieb@hotmail.com','08012345603','789 Pine St',200),
('Diana','Evans','dianae@gmail.com','08012345604','321 Elm St',100),
('Edward','Green','edwardg@outlook.com','08012345605','654 Cedar St',180),
('Faith','Morgan','faithm@gmail.com','08012345606', '12 River St',160),
('George','King','georgek@gmail.com','08012345607','48 City Ave',140),
('Hannah','Wells','hannahw@yahoo.com','08012345608','90 Garden Rd',130),
('Isaac ','Lee','isaacl@hotmail.com','08012345609','85 Palm Dr',155),
('Jennifer','Cole','jencole@gmail.com','08012345610', '72 Pinewood Blvd',170),
('Kelvin','Rogers','kelvinr@gmail.com','08012345611','34 Lake Rd',125),
('Linda','Black','lindab@yahoo.com','08012345612','98 Sunflower St',110),
('Mark','White','markwhite@gmail.com','08012345613','21 Ocean Dr',190),
('Nora ','Steele','noras@gmail.com','08012345614','66 Violet Way',165),
('Oscar',' Dean','oscard@gmail.com','08012345615','45 Redwood Ln',145),
('Paula', 'Grant','paulag@gmail.com','08012345616','77 Blossom Ct',175),
('Quincy', 'Blake ','quincyb@gmail.com','08012345617','30 Lavender Blvd',200),
('Rachel' ,'Drew', 'racheld@yahoo.com', '08012345618','50 Sunset Ave',135),
('Steven', 'Young','stevey@gmail.com','08012345619','13 Moonlight Rd',195),
('Tara', 'Moore','taram@hotmail.com', '08012345620', '36 Birch Dr',115),
('Uche', 'Obi','ucheo@gmail.com','08012345621','29 Hilltop Ln', 185),
('Victoria',' Lane','victorial@yahoo.com', '08012345622', '10 Brook Rd',100),
('Wilson', 'Hart','wilsonh@gmail.com','08012345623','60 Crescent Dr',145),
('Xena', 'Cruz','xenac@gmail.com', '08012345624','38 Olive Grove',130),
('Yemi', 'Lawal','yemil@gmail.com', '08012345625','81 Ash St',170),
('Zara', 'Noor', 'zaran@yahoo.com', '08012345626','55 Island Ave',150),
('Fred', 'Igwe', 'fredi@gmail.com', '08012345627','91 Palace Rd',160),
('Brenda',' Obi','brendao@yahoo.com','08012345628','102 Meadow St',140),
('Victor', 'Joe', 'victorj@hotmail.com', '08012345629','44 Marina Blvd',175),
('Zane', 'Holt', 'zaneh@gmail.com', '08012345630','30 Beach Ave',240);


select * from customers;


insert into menu_items (item_id,item_name,catergory,price)
values
(1,'Jollof Rice','Main','₦1500'),
(2,'Fried Rice','Main','₦1500'),
(3,'Chicken Suya','Side','₦800'),
(4,'Grilled Fish','Main','₦2500'),
(5,'Moi Moi','Side','₦500'),
(6,'Yam Fries','Side','₦600'),
(7,'Ice Cream','Dessert','₦700'),
(8,'Zobo drink','Drink','₦300'),
(9,'Water','Drink','₦200'),
(10,'Efo Riro','Main','₦1800'),
(11,'Pounded Yam','Side','₦400'),
(12,'Egusi Soup','Main','₦2000'),
(13,'Chapman','Drink','₦500'),
(14,'Poundo with Okra','Main','₦2200'),
(15,'Banga Soup','Main','₦25000');

select * from menu_items;


insert into orders (order_id,customer_id,order_date,total_amount,payment_method)
values
(1, 5,'2025-04-01',' ₦4500','Card'),
(2, 10,'2025-04-02',' ₦2300','Cash'),
(3, 1,'2025-04-03','₦3200','Transfer'),
(4, 9,'2025-04-04','₦1500','Cash'),
(5, 15,'2025-04-05','₦2800','Card');

select * from orders;


insert into order_details ( order_id,item_id,item_name,quantity,price)
values
(1,1,'Jollof Rice',2,'₦3000'),
(1,3,'Chicken Suya',1 ,'₦800'),
(2,2,'Fried Rice',1,'1500'),
(2,9,'Water',2 ,'₦400'),
(3,4,'Grilled Fish',1,'₦2500');

select * from order_details;





-- insert into  staff table 
insert into staff (first_name,last_name,workrole,email,phone)
values
('Daniel','Okoro','Manager','danielm@gmail.com','08020000101'),
('Esther','Ade','Chef','esthera@yahoo.com','08020000102'),
('Josephine','Musa','Waiter','josephinem@hotmail.com','08020000103'),
('Gideon','Lawal','Cashier','gideonl@gmail.com','08020000104'),
('Nkechi','Bello','Waiter','nkbello@yahoo.com','08020000105');

select * from staff;





insert into feedback(customer_id,rating,feedback_text,feedback_date)
values
	 (1,.4,'Deliciousfood','2025-04-01'),
	 (7,3,'Ricewasgood','2025-04-02'),
	(3,5,'Bestsuyaintown','2025-04-03'),
	(10,4,'Cleanenvironment','2025-04-04'),
	(5,4,'Affordable','2025-04-05');
    
    
    select * from customers
    limit 5;
    
    select item_name,count(*) from menu_items
    group by item_name;
    
    
    select avg(rating) 
    from feedback;
    
    select * from orders
    where  order_date;
    
    
    
    
    select * from feedback;
    
    
    
    select* from customers;
    
    select  first_name,last_name,email 
    from staff;
    
    select * from menu_items;
    
    select * from menu_items 
    where price >='₦1000';
    
    select *from orders;
	
select  distinct order_date
from orders;
    
    
   
    select customer_id,count(*) from feedback
    group by customer_id;
    
    
select * 
from menu_items
where catergory ='drink';

    
  select * from customers
where first_name= 'A';

select count(*) 
from menu_items;

  
 
select count(*)as phone 
from customers;


select phone, 
count(customer_id)
from customers
group by phone;


select  distinct payment_method
from orders;


select count(*)as total_order 
from orders;


select * 
from orders 
where total_amount <= '₦5000';


select total_amount
from orders
where total_amount >='₦5000';

select price,max(item_name) from menu_items
 group by price;


select *
from feedback
where rating>=3; 


 select rating,count(*)as feedback_id from feedback
 group by rating
 having rating>=3.0;

 select catergory,avg(price) 
 from menu_items
 group by catergory;
 
 select distinct order_date,order_id 
from orders;


select *from orders
where customer_id>=1;


select * from menu_items
limit 5;



select * from menu_items
where item_name ='not ordered';


select * from orders 
where payment_method ='cash';



select order_id ,payment_method
from orders
where payment_method ='cash';



select customer_id, max(rating) 
 from feedback
 group by customer_id;



select customer_id,total_amount
from orders;

select *from menu_items
where item_id>=2;


select  min(item_name) 
 from menu_items;
 
 select *
from orders
where customer_id>=3;

 
 
 


