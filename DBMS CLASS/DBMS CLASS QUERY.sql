SHOW DATABASES;
USE mysql;
SHOW tables;
DESCRIBE TABLE plugin;
CREATE DATABASE DB1;
USE db1;
CREATE TABLE ST1
(
Rollnumber INTEGER,
Stream VARCHAR(50)
);
DROP TABLE ST1;
CREATE TABLE Student
(
Rollnumber INTEGER,
First_name VARCHAR(20),
Last_name VARCHAR(20),
Stream varchar(10)
);

USE db1;

CREATE TABLE db1.Info (
Sname varchar(20),
Lname varchar(20),
Rollnumber Integer);

SELECT * FROM db1.student;
SELECT * FROM db1.info;

DESCRIBE TABLE Info;

SHOW TABLES;


SELECT SYSDATE() from dual;

CREATE TABLE employees(
employee_id INTEGER(5) PRIMARY KEY,
-- CONSTRAINT emp_emp_id_pk PRIMARY KEY,
first_name VARCHAR(20)
);

RENAME TABLE employees TO employee_data;

SELECT CAST(456 AS CHAR);

SELECT CONVERT(123,CHAR);
DROP TABLE employees_value;
DROP TABLE employees;

CREATE TABLE employees_value (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    age INT,
    joining_date DATE
);


INSERT INTO employees_value VALUES
(1, 'Amit Sharma', 'IT', 55000, 26, '2022-03-15'),
(2, 'Neha Verma', 'HR', 42000, 29, '2021-07-10'),
(3, 'Rahul Singh', 'Finance', 60000, 31, '2020-11-05'),
(4, 'Priya Mehta', 'Marketing', 48000, 25, '2023-01-20'),
(5, 'Ankit Gupta', 'IT', 70000, 34, '2019-09-18');

DESCRIBE TABLE employees_value;

SELECT * FROM employees_value;

SELECT salary
FROM employees_value 
WHERE department='IT';

SELECT *
FROM employees_value 
WHERE department='IT';

TRUNCATE TABLE employees_value;


INSERT INTO employees_value VALUES
(1, 'Amit Sharma', 'IT', 55000, 26, '2022-03-15'),
(2, 'Neha Verma', 'HR', 42000, 29, '2021-07-10'),
(3, 'Rahul Singh', 'Finance', 60000, 31, '2020-11-05'),
(4, 'Priya Mehta', 'Marketing', 48000, 25, '2023-01-20'),
(5, 'Ankit Gupta', 'IT', 70000, 34, '2019-09-18'),
(6, 'Prachi Garg', 'IT', 80000, 19,'2026-01-15');

SELECT * FROM employees_value;

CREATE DATABASE Accounts;
USE Accounts;

CREATE TABLE payment(
Customer_id integer primary key,
P_id varchar(20) unique,
Amount double,
Order_id varchar(20) NOT NULL
);

describe Table payment;

INSERT INTO payment VALUES
(101,'2420800Pq23',60000,"24189QWR"),
(102,"2420778PR23",50000,"24189QWR"),
(103,"2420831Pq23",50000,"24189QWR"),
(104,"2420812Pq23",50000,"24189QWR"),
(105,"2420897Pa23",50000,"24189QWR"),
(106,"2420900Pm23",50000,"24189QWR"),
(107,"2420123Pp23",50000,"24189QWR")
;

SELECT* FROM payment;

ALTER TABLE payment
RENAME COLUMN Customer_id To C_id;

describe TABLE payment;


ALTER TABLE payment
RENAME COLUMN P_id TO Product_id;

ALTER TABLE payment
RENAME COLUMN Amount to Cost;

ALTER TABLE payment
RENAME COLUMN Order_id to O_id;

ALTER TABLE payment
ADD Annual_Cost double;

UPDATE payment
SET Annual_Cost=Cost*12
Where C_id IS NOT NULL;

SELECT * FROM payment;
