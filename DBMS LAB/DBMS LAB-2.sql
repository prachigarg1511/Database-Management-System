CREATE DATABASE department;
USE department;

CREATE TABLE ppf_students(
roll_no int primary key,
full_name VARCHAR(255) not null,
email varchar(255) unique,
age INT not null,
attendance_pct decimal(5,2) not null,
semester int not null
);

INSERT INTO ppf_students VALUES
(2420800,'Prachi Garg','prachigarg1511@gmail.com',20,98.04,4),
(2420832,'Sanchit Thakur','sanchit@gmail.com',20,94.00,4),
(2420778,'Nidhi Sharma','nidhi@gmail.com',20,86.00,4),
(2420769,'Mohit Kumar','mohit@gmail.com',21,98.08,4),
(2420804,'Sarika Chauhan','sarika@gmail.com',21,95.06,4);

SELECT * FROM ppf_students;

SELECT full_name as student_name
FROM ppf_students
WHERE attendance_pct<75;

SELECT full_name,roll_no as student_roll
FROM ppf_students
WHERE attendance_pct<75;

UPDATE ppf_students
SET attendance_pct=90
WHERE roll_no=2420800;

DELETE from ppf_students
WHERE roll_no=2420832;

SELECT * FROM ppf_students;

INSERT INTO ppf_students 
VALUES
(2520840, 'Amit',   'amit@gmail.com',   18, 55.00, 2),
(2421832, 'Neha',   'neha@gmail.com',   19, 65.00, 4),
(2520818, 'Rohit',  'rohit@gmail.com',  20, 45.00, 2),
(2421769, 'Karan',  'karan@gmail.com',  20, 90.00, 4),
(2320778, 'Pooja',  'pooja@gmail.com',  21, 75.00, 6),
(2421839, 'Anjali', 'anjali@gmail.com', 20, 88.00, 4),
(2520801, 'Vikram', 'vikram@gmail.com', 22, 92.00, 2);


SELECT * 
FROM ppf_students;


UPDATE ppf_students
SET semester = CASE
    WHEN roll_no LIKE '24%' THEN 4
    WHEN roll_no LIKE '23%' THEN 6
    WHEN roll_no LIKE '25%' THEN 2
    ELSE semester
END;


SELECT * 
FROM ppf_students;

SELECT full_name, attendance_pct
FROM ppf_students
WHERE semester = 4;

ALTER TABLE ppf_students
RENAME COLUMN full_name TO student_name;

DESCRIBE ppf_students;


CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    student_roll INT NOT NULL,
    FOREIGN KEY (student_roll) REFERENCES ppf_students(roll_no)
);

INSERT INTO courses
VALUES
(1, 'DBMS', 2420800),
(2, 'OOPS', 2420769),
(3, 'DSA',  2421769),
(4, 'CN',   2421832),
(5, 'AI',   2320778);





SELECT * 
FROM courses;


SELECT 
    p.student_name,
    p.roll_no,
    c.course_name
FROM ppf_students p
JOIN courses c
ON p.roll_no = c.student_roll;
