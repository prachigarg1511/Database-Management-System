CREATE DATABASE bookStore;
USE bookStore;
CREATE TABLE Customers
(
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(50),
Email VARCHAR(50) UNIQUE,
City VARCHAR(30) NOT NULL);


INSERT INTO Customers
VALUES
(1,'Anita','anita@gmail.com','Mummbai'),
(2,'Rahul','rahul@gmail.com','Delhi');


SELECT * FROM Customers;

SELECT * 
FROM Customers 
WHERE City = 'Delhi';


SELECT 
    CustomerName AS Name,
    Email AS "Email Address",
    City AS Location
FROM Customers;

SELECT Email 
FROM Customers 
WHERE City = 'Delhi';

UPDATE Customers
SET City = 'Bangalore'
WHERE CustomerName = 'Rahul';

DELETE FROM Customers
WHERE CustomerName = 'Anita';
