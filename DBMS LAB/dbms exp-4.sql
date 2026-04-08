-- =========================================
-- EXPERIMENT 4 : GROUP BY & AGGREGATES
-- Database Name : exp_4
-- Student Name : Prachi Garg
-- Roll No : 2420800
-- =========================================

-- Create Database
CREATE DATABASE exp_4;
USE exp_4;

-- Create Student Table
CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Age INT,
    Department VARCHAR(50)
);

-- Create Course Table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT
);

-- Create Enrollment Table
CREATE TABLE Enrollment (
    EnrollID INT PRIMARY KEY,
    RollNo INT,
    CourseID INT,
    Marks INT,
    FOREIGN KEY (RollNo) REFERENCES Student(RollNo),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Insert Student Data
INSERT INTO Student VALUES
(2420800, 'Prachi Garg', 20, 'Computer Science'),
(2420801, 'Aman Sharma', 21, 'Computer Science'),
(2420802, 'Riya Singh', 19, 'Electronics');

-- Insert Course Data
INSERT INTO Course VALUES
(101, 'DBMS', 4),
(102, 'Data Structures', 3),
(103, 'Digital Electronics', 3);

-- Insert Enrollment Data
INSERT INTO Enrollment VALUES
(1, 2420800, 101, 90),
(2, 2420800, 102, 85),
(3, 2420801, 101, 75),
(4, 2420802, 103, 88);

-- =========================================
-- COUNT() Example
-- =========================================
SELECT Department, COUNT(*) AS TotalStudents
FROM Student
GROUP BY Department;

-- =========================================
-- AVG() Example
-- =========================================
SELECT CourseID, AVG(Marks) AS AverageMarks
FROM Enrollment
GROUP BY CourseID;

-- =========================================
-- SUM() Example
-- =========================================
SELECT RollNo, SUM(Marks) AS TotalMarks
FROM Enrollment
GROUP BY RollNo;

-- =========================================
-- HAVING Clause Example
-- =========================================
SELECT CourseID, AVG(Marks) AS AvgMarks
FROM Enrollment
GROUP BY CourseID
HAVING AVG(Marks) > 80;