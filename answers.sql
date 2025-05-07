-- --Creating a database 
CREATE DATABASE Restraunt_Ordering_System;
-- -- Using the database
USE Restraunt_Ordering_System;
-- creating table customers
CREATE TABLE Customers(
customer_ID INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(255),
Phone INT
);
-- Creating table price
CREATE TABLE price(
price_ID INT PRIMARY KEY AUTO_INCREMENT,
Amount DECIMAL(10,2)
);
-- creating table menu_items
CREATE TABLE menuItems(
menu_item_ID INT PRIMARY KEY AUTO_INCREMENT,
price_ID INT,
menuName VARCHAR(255),
menuDescription VARCHAR(255),
Category VARCHAR(255),
Availability_status VARCHAR (255),
FOREIGN KEY (price_ID) REFERENCES price(price_ID)
);
-- creating table orders
CREATE TABLE orders(
order_ID INT PRIMARY KEY AUTO_INCREMENT,
customer_ID INT,
orderTime DATETIME,
orderStatus VARCHAR(255),
FOREIGN KEY (customer_ID) REFERENCES customers(customer_ID)
);
-- creating table order_items
CREATE TABLE order_items(
order_items_ID INT PRIMARY KEY AUTO_INCREMENT,
order_ID INT,
menu_item_ID INT,
FOREIGN KEY (order_ID) REFERENCES orders(order_ID),
FOREIGN KEY (menu_item_ID) REFERENCES menuitems(menu_item_ID)
);
CREATE TABLE payments(
payment_ID INT PRIMARY KEY AUTO_INCREMENT,
amountPaid DECIMAL (10,2),
paymentMethod VARCHAR (255),
paymentTime DATETIME,
order_ID INT,
FOREIGN KEY (order_ID) REFERENCES orders (order_ID)
);
-- creating table staff
CREATE TABLE staff(
staff_ID INT PRIMARY KEY AUTO_INCREMENT,
staffName VARCHAR(255),
staffRole VARCHAR (255),
phone INT
);