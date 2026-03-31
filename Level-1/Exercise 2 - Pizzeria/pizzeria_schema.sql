DROP DATABASE IF EXISTS pizzeria;
CREATE DATABASE pizzeria;
USE pizzeria;

DROP TABLE IF EXISTS provinces;
CREATE TABLE provinces(
id INT NOT NULL AUTO_INCREMENT,
province VARCHAR(80) NOT NULL,
PRIMARY KEY (id)
);

DROP TABLE IF EXISTS cities;
CREATE TABLE cities(
id INT NOT NULL AUTO_INCREMENT,
city VARCHAR(80) NOT NULL,
province_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (province_id) REFERENCES provinces(id)
);

DROP TABLE IF EXISTS clients;
CREATE TABLE clients(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
surnames VARCHAR(120) NOT NULL,
address VARCHAR(150) NOT NULL,
postal_code VARCHAR(30) NOT NULL,
city_id INT NOT NULL,
phone VARCHAR(15) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (city_id) REFERENCES cities(id)
);

DROP TABLE IF EXISTS stores;
CREATE TABLE stores(
id INT NOT NULL AUTO_INCREMENT,
address VARCHAR(80) NOT NULL,
postal_code VARCHAR(15) NOT NULL,
city_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (city_id) REFERENCES cities(id)
);

DROP TABLE IF EXISTS employees;
CREATE TABLE employees(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
surnames VARCHAR(120) NOT NULL,
NIF VARCHAR(15) NOT NULL UNIQUE,
phone VARCHAR(15) NOT NULL,
role ENUM('chef', 'delivery') NOT NULL,
store_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (store_id) REFERENCES stores(id)
);


DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
id INT NOT NULL AUTO_INCREMENT,
order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
type_order ENUM('local', 'delivery') NOT NULL,
total_price DECIMAL(8,2) NOT NULL,
client_id INT NOT NULL,
store_id INT NOT NULL,
delivery_employee_id INT,
delivery_datetime DATETIME, 
PRIMARY KEY (id),
FOREIGN KEY (client_id) REFERENCES clients(id),
FOREIGN KEY (store_id) REFERENCES stores(id),
FOREIGN KEY (delivery_employee_id) REFERENCES employees(id)
);

DROP TABLE IF EXISTS products;
CREATE TABLE products(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
description VARCHAR(100),
image VARCHAR(255),
price DECIMAL(8,2) NOT NULL,
product_type ENUM('pizza', 'burger', 'drink') NOT NULL,
PRIMARY KEY (id)
);

DROP TABLE IF EXISTS order_items;
CREATE TABLE order_items(
id INT NOT NULL AUTO_INCREMENT,
order_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL CHECK (quantity > 0),
PRIMARY KEY (id),
UNIQUE (order_id, product_id),
FOREIGN KEY (order_id) REFERENCES orders(id),
FOREIGN KEY (product_id) REFERENCES products(id) 
);

DROP TABLE IF EXISTS categories;
CREATE TABLE categories(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);

DROP TABLE IF EXISTS pizzas;
CREATE TABLE pizzas(
product_id INT NOT NULL,
category_id INT NOT NULL,
PRIMARY KEY (product_id),
FOREIGN KEY (category_id) REFERENCES categories(id),
FOREIGN KEY (product_id) REFERENCES products(id)
);

