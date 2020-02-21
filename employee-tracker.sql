DROP DATABASE IF EXISTS employee_trackerDB;
CREATE DATABASE employee_trackerDB;
USE employee_trackerDB;
CREATE TABLE department (
	id INT NOT NULL auto_increment,
    name VARCHAR(30) NOT NULL,
	PRIMARY KEY (id)
	);
    
INSERT INTO department (name)
VALUES ("Engineering");
INSERT INTO department (name)
VALUES ("Finance");
INSERT INTO department (name)
VALUES ("Legal");
INSERT INTO department (name)
VALUES ("Sales");

-- SELECT * FROM department;
    
CREATE TABLE role (
	id INT NOT NULL auto_increment,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
	PRIMARY KEY (id)
	);
 
INSERT INTO role (id, title, salary, department_id)
VALUES ("1", "Software Engineer", "120000", "1");

INSERT INTO role (id, title, salary, department_id)
VALUES ("2", "Lead Engineer", "150000", "1");

INSERT INTO role (id, title, salary, department_id)
VALUES ("3", "Salesperson", "80000", "4");

INSERT INTO role (id, title, salary, department_id)
VALUES ("4", "Sales Lead", "100000", "4");

INSERT INTO role (id, title, salary, department_id)
VALUES ("5", "Accountant", "125000", "2");

INSERT INTO role (id, title, salary, department_id)
VALUES ("6", "Lawyer", "190000", "3");

INSERT INTO role (id, title, salary, department_id)
VALUES ("7", "Legal Team Lead", "250000", "3");

-- SELECT * FROM role;
 
 CREATE TABLE employee (
	id INT NOT NULL auto_increment,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
	PRIMARY KEY (id)
	);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Austin", "Jones", "1", "1");
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "James", "2", "1");
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Sally", "McNally", "3", "4");
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Susie", "Love", "4", "3");
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Fred", "Heart", "3", "2");
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Shannon", "Franklin", "2", "2");
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Christian", "Pants", "5", "2");
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Elisa", "Doberman", "6", "1");
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("David", "Troy", "4", "3");
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jess", "Empress", "7", "4");

-- SELECT * FROM employee;

-- SELECT id, first_name, last_name, role_id, manager_id FROM employee;
-- UPDATE employee 
-- SET manager_id = '3' 
-- WHERE id = 4;
 