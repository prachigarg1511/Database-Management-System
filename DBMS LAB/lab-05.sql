CREATE DATABASE Lab_05;

USE Lab_05;



CREATE TABLE student_course_master (
    student_id INT,
    student_name VARCHAR(50),
    course VARCHAR(50),
    instructor VARCHAR(50),
    PRIMARY KEY (student_id, course)
);

INSERT INTO student_course_master 
(student_id, student_name, course, instructor)
VALUES
(1, 'Prachi Garg', 'DBMS', 'Dr. Smith'),
(1, 'Prachi Garg', 'Algorithms', 'Prof. James'),
(2, 'Mehak', 'DBMS', 'Dr. Smith');

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(50),
    instructor VARCHAR(50)
);

CREATE TABLE enrollment (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students (student_id, student_name)
SELECT DISTINCT student_id, student_name
FROM student_course_master;

INSERT INTO courses (course_name, instructor)
SELECT DISTINCT course, instructor
FROM student_course_master;

INSERT INTO enrollment (student_id, course_id)
SELECT s.student_id, c.course_id
FROM student_course_master scm
JOIN students s 
ON scm.student_id = s.student_id
JOIN courses c 
ON scm.course = c.course_name;

SELECT s.student_id, s.student_name, c.course_name, c.instructor
FROM enrollment e
JOIN students s 
ON e.student_id = s.student_id
JOIN courses c 
ON e.course_id = c.course_id;

SELECT * FROM student_course_master;

SELECT * FROM students;

SELECT * FROM courses;

SELECT * FROM enrollment;

SELECT s.student_id, s.student_name, c.course_name, c.instructor
FROM enrollment e
JOIN students s ON e.student_id = s.student_id


JOIN courses c ON e.course_id = c.course_id;