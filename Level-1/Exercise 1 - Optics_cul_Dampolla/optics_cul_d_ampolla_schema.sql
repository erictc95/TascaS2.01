DROP DATABASE IF EXISTS `optics_cul_d'ampolla`;
CREATE DATABASE `optics_cul_d'ampolla`;
USE `optics_cul_d'ampolla`;

DROP TABLE IF EXISTS clients;
CREATE TABLE clients(
  id INT NOT NULL AUTO_INCREMENT,
  client_name VARCHAR(50) NOT NULL,
  address VARCHAR(120) NOT NULL,
  phone_number VARCHAR(15) NOT NULL,
  email VARCHAR(50) NOT NULL,
  registration_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  recommended_by INT DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (recommended_by) REFERENCES clients(id)
  );
  
  DROP TABLE IF EXISTS employees;
  CREATE TABLE employees(
  id INT NOT NULL AUTO_INCREMENT,
  employee_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
  );
  
  DROP TABLE IF EXISTS suppliers;
  CREATE TABLE suppliers(
  id INT NOT NULL AUTO_INCREMENT,
  NIF VARCHAR(12) NOT NULL UNIQUE,
  supplier_name VARCHAR(60) NOT NULL,
  street_name VARCHAR(100) NOT NULL,
  street_number VARCHAR(5) DEFAULT NULL,
  floor VARCHAR(5) DEFAULT NULL,
  door VARCHAR(3) DEFAULT NULL,
  city VARCHAR(50) NOT NULL,
  postal_code VARCHAR(10) NOT NULL,
  country VARCHAR(40) NOT NULL,
  telephone VARCHAR(20) NOT NULL,
  fax VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  );

DROP TABLE IF EXISTS glasses;
CREATE TABLE glasses(
  id INT NOT NULL AUTO_INCREMENT,
  brand VARCHAR(50) NOT NULL,
  frame_type ENUM('floating','plastic','metal') NOT NULL,
  frame_color VARCHAR(30) DEFAULT NULL,
  left_lens_graduation DECIMAL(4,2) DEFAULT NULL,
  right_lens_graduation DECIMAL(4,2) DEFAULT NULL,
  left_lens_color VARCHAR(30) DEFAULT NULL,
  right_lens_color VARCHAR(30) DEFAULT NULL,
  price DECIMAL(8,2) NOT NULL,
  supplier_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (supplier_id) REFERENCES suppliers(id)
  );
  
  DROP TABLE IF EXISTS sales;
  CREATE TABLE sales(
  id INT NOT NULL AUTO_INCREMENT,
  client_id INT NOT NULL,
  employee_id INT NOT NULL,
  glasses_id INT NOT NULL,
  sale_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (client_id) REFERENCES clients(id),
  FOREIGN KEY (employee_id) REFERENCES employees(id),
  FOREIGN KEY (glasses_id) REFERENCES glasses(id)
  );
  

  
  