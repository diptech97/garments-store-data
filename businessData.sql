create database businessdata;
use businessdata;

create table customer(
	custId int primary key,
    cust_name varchar(20),
    gender ENUM('Male', 'Female', 'Other', 'Unknown') DEFAULT 'Unknown',
    cust_no varchar(10),
    cust_add varchar(50)
);

INSERT INTO customer (custId, cust_name, gender, cust_no, cust_add) VALUES
(1, 'John Doe', 'Male', '1234567890', '123 Main St'),
(2, 'Jane Smith', 'Female', '2345678901', '456 Oak Ave'),
(3, 'Bob Johnson', 'Male', '3456789012', '789 Pine Rd'),
(4, 'Alice Brown', 'Female', '4567890123', '101 Elm St'),
(5, 'Charlie Davis', 'Male', '5678901234', '222 Maple Dr'),
(6, 'Emma Wilson', 'Female', '6789012345', '333 Birch Ln'),
(7, 'Michael Lee', 'Male', '7890123456', '444 Cedar Ave'),
(8, 'Sarah Taylor', 'Female', '8901234567', '555 Oak St'),
(9, 'David Clark', 'Male', '9012345678', '666 Pine Blvd'),
(0, 'Laura White', 'Female', '0123456789', '777 Elm Ct'),
(11, 'James Brown', 'Male', '1234567809', '888 Maple Rd'),
(12, 'Emily Davis', 'Female', '2345678910', '999 Birch St'),
(13, 'Robert Wilson', 'Male', '3456789021', '1010 Cedar Ln'),
(14, 'Lisa Taylor', 'Female', '4567890132', '1111 Oak Dr'),
(15, 'Thomas Clark', 'Male', '5678901243', '1212 Pine Ave'),
(16, 'Karen White', 'Female', '6789012354', '1313 Elm Rd'),
(17, 'William Lee', 'Male', '7890123465', '1414 Maple St'),
(18, 'Nancy Brown', 'Female', '8901234576', '1515 Birch Ct'),
(19, 'George Davis', 'Male', '9012345687', '1616 Cedar Dr'),
(20, 'Helen Wilson', 'Female', '0123456798', '1717 Oak Ln'),
(21, 'Peter Taylor', 'Male', '1234567810', '1818 Pine St'),
(22, 'Susan Clark', 'Female', '2345678921', '1919 Elm Ave'),
(23, 'Henry White', 'Male', '3456789032', '2020 Maple Rd'),
(24, 'Rachel Lee', 'Female', '4567890143', '2121 Birch Dr'),
(25, 'Paul Brown', 'Male', '5678901254', '2222 Cedar St'),
(26, 'Margaret Davis', 'Female', '6789012365', '2323 Oak Ct'),
(27, 'Steven Wilson', 'Male', '7890123476', '2424 Pine Ln'),
(28, 'Betty Taylor', 'Female', '8901234587', '2525 Elm Rd'),
(29, 'Edward Clark', 'Male', '9012345698', '2626 Maple Ave'),
(30, 'Donna White', 'Female', '0123457809', '2727 Birch St');

insert into customer (custId, cust_name, gender, cust_no, cust_add)  values (31, 'andra gul', 'Unknown', '0124457809', '2726 Birch St'); 

select * from product;
truncate table employee;
select cust_name,gender, field('John', cust_name, gender)  from customer;
select lpad(cust_name, length(cust_name)+4, 'Dr.  ') as title_add from customer;
create table product(
	prodId int primary key,
    prod_name varchar(50),
    prod_category varchar(10),
    cost_price int,
    sales_price int,
    quantity int
);
INSERT INTO product (prodId, prod_name, prod_category, cost_price, sales_price, quantity) VALUES
(1, 'Floral Maxi Dress', 'Floral', 25.50, 45.00, 50),
(2, 'Denim Jacket Dress', 'Quartz', 30.00, 55.00, 40),
(3, 'Leather Mini Dress', 'Plaid', 35.75, 65.00, 30),
(4, 'Bohemian Sundress', 'Floral', 20.25, 40.00, 60),
(5, 'Cowboy Style Dress', 'Checkered', 45.00, 80.00, 25),
(6, 'Fringed Shift Dress', 'Quartz', 28.50, 50.00, 35),
(7, 'Western Shirt Dress', 'Plaid', 22.00, 38.00, 45),
(8, 'High-Waisted Dress', 'Floral', 29.75, 52.00, 50),
(9, 'Embroidered A-Line Dress', 'Checkered', 24.00, 42.00, 55),
(10, 'Suede Midi Dress', 'Quartz', 32.50, 60.00, 30),
(11, 'Ruffle Hem Dress', 'Floral', 27.00, 48.00, 40),
(12, 'Checkered Day Dress', 'Checkered', 21.50, 39.00, 50),
(13, 'Cowgirl Print Dress', 'Plaid', 15.00, 30.00, 60),
(14, 'Belted Western Dress', 'Floral', 26.25, 46.00, 35),
(15, 'Cropped Sleeve Dress', 'Quartz', 33.00, 58.00, 30),
(16, 'Printed Maxi Dress', 'Checkered', 18.75, 35.00, 45),
(17, 'Lace Overlay Dress', 'Floral', 23.50, 41.00, 50),
(18, 'Western Wrap Dress', 'Plaid', 31.00, 54.00, 40),
(19, 'Studded Mini Dress', 'Quartz', 40.00, 70.00, 25),
(20, 'Flared Hem Dress', 'Floral', 27.25, 49.00, 35),
(21, 'Off-Shoulder Dress', 'Checkered', 22.75, 40.00, 45),
(22, 'Denim A-Line Dress', 'Plaid', 29.00, 50.00, 30),
(23, 'Fringed Mini Dress', 'Quartz', 20.50, 36.00, 50),
(24, 'Embroidered Maxi Dress', 'Floral', 34.75, 62.00, 30),
(25, 'Bohemian Flow Dress', 'Checkered', 26.00, 45.00, 40),
(26, 'Western Layered Dress', 'Plaid', 38.00, 68.00, 25),
(27, 'Floral Shift Dress', 'Floral', 21.25, 38.00, 55),
(28, 'Leather Trim Dress', 'Quartz', 42.50, 75.00, 20),
(29, 'Ruffle Maxi Dress', 'Checkered', 24.75, 43.00, 45),
(30, 'Checkered Sundress', 'Plaid', 30.00, 52.00, 35),
(31, 'Suede Wrap Dress', 'Floral', 36.50, 65.00, 30),
(32, 'Belted Maxi Dress', 'Quartz', 28.00, 50.00, 40),
(33, 'Printed Shift Dress', 'Checkered', 19.50, 35.00, 50),
(34, 'Cowgirl Style Dress', 'Plaid', 25.75, 45.00, 35),
(35, 'High-Waisted Maxi', 'Floral', 27.00, 48.00, 40),
(36, 'Embroidered Day Dress', 'Quartz', 33.25, 58.00, 30),
(37, 'Lace Midi Dress', 'Checkered', 23.00, 40.00, 45),
(38, 'Western Flow Dress', 'Plaid', 29.50, 52.00, 35),
(39, 'Studded A-Line Dress', 'Floral', 39.00, 70.00, 25),
(40, 'Flared Maxi Dress', 'Quartz', 26.75, 47.00, 40);

create table employee (
	empId int primary key,
    emp_name varchar(20),
    emp_add varchar(40),
    emp_no varchar(10),
    emp_age int,
    gender ENUM('Male', 'Female', 'Other', 'Unknown') DEFAULT 'Unknown'
);

INSERT INTO employee (empId, emp_name, emp_add, emp_no, emp_age, gender) VALUES
(1, 'madhurima sing', 'pipulpati hooghly chinsurah', '1234567878', 21, 'Female'),
(2, 'shreemoyee das', 'station road hooghly chinsurah', '1234598765', 20, 'Female'),
(3, 'Ms. sinha', 'Kolkata sector 1', '1234567888', 21, 'Female'),
(4, 'pooja das', 'station road hooghly chinsurah', '1234598765', 20, 'Female'),
(5, 'Mrs. sing', 'Howrah station road', '1234537878', 29, 'Female');

create table branch (
	branchId int primary key,
    branch_name varchar(25),
    branch_add varchar(100),
    branch_no varchar(10),
    empId int
);

INSERT INTO branch (branchId, branch_name, branch_add, branch_no, empId) VALUES
(1, 'Hooghly Main Branch', '123 Pipulpati Rd, Hooghly, West Bengal', '9876543210', 1),
(2, 'Chinsurah Store', '456 Station Rd, Chinsurah, West Bengal', '8765432109', 4),
(3, 'Pipulpati Outlet', '789 Pipulpati Ln, Hooghly, West Bengal', '7654321098', 2),
(4, 'Kolkata City Branch', '101 Park Ave, Kolkata, West Bengal', '6543210987', 3),
(5, 'Howrah Regional Office', '222 Howrah Rd, Howrah, West Bengal', '5432109876', 5);

select b.branch_name, b.branch_no, e.emp_name from branch b inner join employee e on b.empId = e.empId;

create table orderData (
	orderId int primary key,
    custId int,
    prodId int,
    order_date date,
    quantity int
);

INSERT INTO orderData (orderId, custId, prodId, order_date, quantity) VALUES
(1, 25, 29, '2025-07-25', 2),
(2, 12, 11, '2025-06-11', 1),
(3, 20, 19, '2025-07-20', 1),
(4, 8, 38, '2025-07-08', 3),
(5, 15, 14, '2025-06-14', 3),
(6, 29, 37, '2025-07-29', 3),
(7, 3, 2, '2025-06-02', 3),
(8, 17, 16, '2025-06-16', 2),
(9, 24, 23, '2025-06-23', 1),
(10, 11, 10, '2025-06-10', 2),
(11, 26, 31, '2025-07-26', 3),
(12, 5, 4, '2025-06-04', 2),
(13, 19, 18, '2025-06-18', 1),
(14, 30, 39, '2025-07-30', 1),
(15, 7, 37, '2025-07-07', 2),
(16, 22, 21, '2025-06-21', 4),
(17, 13, 12, '2025-06-12', 4),
(18, 2, 32, '2025-07-02', 1),
(19, 28, 27, '2025-06-27', 3),
(20, 16, 15, '2025-06-15', 1),
(21, 4, 34, '2025-07-04', 2),
(22, 23, 22, '2025-06-22', 2),
(23, 9, 8, '2025-06-08', 1),
(24, 18, 17, '2025-06-17', 3),
(25, 6, 5, '2025-06-05', 3),
(26, 27, 26, '2025-06-26', 1),
(27, 14, 13, '2025-06-13', 2),
(28, 1, 31, '2025-07-01', 2),
(29, 21, 20, '2025-06-20', 3),
(30, 0, 30, '2025-06-30', 3),
(31, 10, 9, '2025-06-09', 3),
(32, 29, 28, '2025-06-28', 2),
(33, 15, 9, '2025-07-15', 2),
(34, 3, 33, '2025-07-03', 4),
(35, 17, 13, '2025-07-17', 1),
(36, 11, 1, '2025-07-11', 3),
(37, 24, 27, '2025-07-24', 4),
(38, 8, 7, '2025-06-07', 2),
(39, 20, 21, '2025-07-21', 2),
(40, 5, 35, '2025-07-05', 3),
(41, 12, 3, '2025-07-12', 2),
(42, 22, 23, '2025-07-22', 3),
(43, 13, 5, '2025-07-13', 1),
(44, 26, 25, '2025-06-25', 2),
(45, 18, 15, '2025-07-18', 2),
(46, 2, 1, '2025-06-01', 2),
(47, 16, 11, '2025-07-16', 3),
(48, 28, 35, '2025-07-28', 2),
(49, 19, 17, '2025-07-19', 3),
(50, 30, 29, '2025-06-29', 1),
(51, 23, 25, '2025-07-23', 1),
(52, 4, 3, '2025-06-03', 1),
(53, 27, 33, '2025-07-27', 1),
(54, 14, 7, '2025-07-14', 4),
(55, 6, 36, '2025-07-06', 1),
(56, 25, 24, '2025-06-24', 3),
(57, 9, 39, '2025-07-09', 1),
(58, 10, 40, '2025-07-10', 2),
(59, 21, 19, '2025-06-19', 2),
(60, 7, 6, '2025-06-06', 4);

insert into orderData (orderId, custId, prodId, order_date, quantity)values(61, 31, 4, '2025-06-06', 1);

select * from customer;

SELECT 
    o.order_date,
    p.prod_name,
    p.prod_category,
    p.sales_price,
    o.quantity,
    c.cust_name,
    c.cust_no
FROM orderData o
INNER JOIN product p ON p.prodId = o.prodId
INNER JOIN customer c ON c.custId = o.custId
ORDER BY o.order_date;


select * from customer;

create table sales (
    saleId int primary key,
    orderId int,    
    custId int,
    prodId int,
    sale_date date,
    branchId int,
    feedbackId int,
	
    foreign key (orderId) references orderData(orderId),
    foreign key (prodId) references product(prodId),
    foreign key (branchId) references branch(branchId)
);
INSERT INTO sales (saleId, orderId, custId, prodId, sale_date, branchId, feedbackId) VALUES
(1, 1, 25, 29, '2025-07-25', 3, 7),
(2, 2, 12, 11, '2025-06-11', 1, 4),
(3, 3, 20, 19, '2025-07-20', 5, 9),
(4, 4, 8, 38, '2025-07-08', 2, 2),
(5, 5, 15, 14, '2025-06-14', 4, 6),
(6, 7, 3, 2, '2025-06-02', 3, 3),
(7, 8, 17, 16, '2025-06-16', 5, 1),
(8, 9, 24, 23, '2025-06-23', 2, 10),
(9, 10, 11, 10, '2025-06-10', 4, 5),
(10, 11, 26, 31, '2025-07-26', 1, 7),
(11, 13, 19, 18, '2025-06-18', 5, 4),
(12, 14, 30, 39, '2025-07-30', 2, 9),
(13, 15, 7, 37, '2025-07-07', 4, 6),
(14, 16, 22, 21, '2025-06-21', 1, 3),
(15, 17, 13, 12, '2025-06-12', 3, 8),
(16, 19, 28, 27, '2025-06-27', 2, 5),
(17, 20, 16, 15, '2025-06-15', 4, 10),
(18, 21, 4, 34, '2025-07-04', 1, 7),
(19, 22, 23, 22, '2025-06-22', 3, 2),
(20, 23, 9, 8, '2025-06-08', 5, 4),
(21, 25, 6, 5, '2025-06-05', 4, 6),
(22, 26, 27, 26, '2025-06-26', 1, 3),
(23, 27, 14, 13, '2025-06-13', 3, 8),
(24, 28, 1, 31, '2025-07-01', 5, 1),
(25, 29, 21, 20, '2025-06-20', 2, 5),
(26, 31, 10, 9, '2025-06-09', 1, 7),
(27, 32, 29, 28, '2025-06-28', 3, 2),
(28, 33, 15, 9, '2025-07-15', 5, 4),
(29, 34, 3, 33, '2025-07-03', 2, 9),
(30, 35, 17, 13, '2025-07-17', 4, 6),
(31, 37, 24, 27, '2025-07-24', 3, 8),
(32, 38, 8, 7, '2025-06-07', 5, 1),
(33, 39, 20, 21, '2025-07-21', 2, 5),
(34, 40, 5, 35, '2025-07-05', 4, 10),
(35, 41, 12, 3, '2025-07-12', 1, 7),
(36, 43, 13, 5, '2025-07-13', 5, 4),
(37, 44, 26, 25, '2025-06-25', 2, 9),
(38, 45, 18, 15, '2025-07-18', 4, 6),
(39, 46, 2, 1, '2025-06-01', 1, 3),
(40, 47, 16, 11, '2025-07-16', 3, 8),
(41, 49, 19, 17, '2025-07-19', 2, 5),
(42, 50, 30, 29, '2025-06-29', 4, 10),
(43, 51, 23, 25, '2025-07-23', 1, 7),
(44, 52, 4, 3, '2025-06-03', 3, 2),
(45, 53, 27, 33, '2025-07-27', 5, 4),
(46, 55, 6, 36, '2025-07-06', 4, 6),
(47, 56, 25, 24, '2025-06-24', 1, 3),
(48, 57, 9, 39, '2025-07-09', 3, 8),
(49, 58, 10, 40, '2025-07-10', 5, 1),
(50, 59, 20, 19, '2025-06-19', 2, 5);

INSERT INTO sales (saleId, orderId, custId, prodId, sale_date, branchId, feedbackId) VALUES (51, 61, 31, 19, '2025-06-19', 2, 5);


CREATE TABLE feedback (
    feedbackId INT PRIMARY KEY,
    rating INT
);
INSERT INTO feedback (feedbackId, rating) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

#number of transition by gender
select c.gender, count(s.saleId) as count_gender_wise from customer c join sales s on c.custId = s.custId group by c.gender;

#customers who placed an order from more than 1 branch
select c.cust_name, count(s.saleId) as sale_branch_wise from customer c join sales s on c.custId = s.custId 
join branch b on b.branchId = s.branchId group by c.cust_name having count(s.saleId) > 1;


#city with highest number of order area with highest sale
select b.branch_name, SUM(p.sales_price * od.quantity) as total_sales
from sales s
join orderData od on s.orderId = od.orderId
join product p on s.prodId = p.prodId
join branch b on s.branchId = b.branchId
group by b.branchId, b.branch_name
order by total_sales desc;
#limit 1;