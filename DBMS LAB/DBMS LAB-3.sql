-- ==============================
-- EXPERIMENT 3 : SQL JOINS
-- Database Name : exp_3
-- Student Name : Prachi Garg
-- Roll No : 2420800
-- ==============================

-- Create Database
CREATE DATABASE exp_3;
USE exp_3;

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

-- Insert Data into Student
INSERT INTO Student VALUES
(2420800, 'Prachi Garg', 20, 'Computer Science'),
(2420801, 'Aman Sharma', 21, 'Computer Science'),
(2420802, 'Riya Singh', 19, 'Electronics');

-- Insert Data into Course
INSERT INTO Course VALUES
(101, 'DBMS', 4),
(102, 'Data Structures', 3),
(103, 'Digital Electronics', 3);

-- Insert Data into Enrollment
INSERT INTO Enrollment VALUES
(1, 2420800, 101, 90),
(2, 2420800, 102, 85),
(3, 2420801, 101, 75),
(4, 2420802, 103, 88);

-- ==============================
-- INNER JOIN
-- ==============================
SELECT Student.StudentName, Course.CourseName, Enrollment.Marks
FROM Student
INNER JOIN Enrollment
ON Student.RollNo = Enrollment.RollNo
INNER JOIN Course
ON Enrollment.CourseID = Course.CourseID;

-- ==============================
-- LEFT JOIN
-- ==============================
SELECT Student.StudentName, Course.CourseName
FROM Student
LEFT JOIN Enrollment
ON Student.RollNo = Enrollment.RollNo
LEFT JOIN Course
ON Enrollment.CourseID = Course.CourseID;

-- ==============================
-- RIGHT JOIN
-- ==============================
SELECT Student.StudentName, Course.CourseName
FROM Student
RIGHT JOIN Enrollment
ON Student.RollNo = Enrollment.RollNo
RIGHT JOIN Course
ON Enrollment.CourseID = Course.CourseID;