CREATE DATABASE Lab_06;
USE Lab_06;

-- Setup User-Defined Connection Access
CREATE USER IF NOT EXISTS 'student_admin'@'localhost' IDENTIFIED BY 'password123';
GRANT ALL PRIVILEGES ON EXP6.* TO 'student_admin'@'localhost';
FLUSH PRIVILEGES;


-- Setup Tables
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    location VARCHAR(50),
    marks INT
);

CREATE TABLE log_table (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255)
);

DELIMITER //

-- BEFORE INSERT: Formatting data before it hits the table
CREATE TRIGGER before_student_insert
BEFORE INSERT ON students
FOR EACH ROW
BEGIN
    SET NEW.name = UPPER(NEW.name);
    IF NEW.location = '' THEN
        SET NEW.location = 'Unknown';
    END IF;
END //

-- AFTER INSERT: Automating an action after data is saved
CREATE TRIGGER after_student_insert
AFTER INSERT ON students
FOR EACH ROW
BEGIN
    INSERT INTO log_table (description) 
    VALUES (CONCAT('Inserted student: ', NEW.name));
END //

DELIMITER ;

-- Insert Records
INSERT INTO students (student_id, name, location, marks) VALUES (800, 'Prachi Garg', 'Punjab', 98);
INSERT INTO students (student_id, name, location, marks) VALUES (778, 'Nidhi', 'Haryana', 80);

-- Check Results
SELECT * FROM students;
SELECT * FROM log_table;