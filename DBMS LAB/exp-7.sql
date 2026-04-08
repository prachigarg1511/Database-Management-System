CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

INSERT INTO Students VALUES
(1, 'Prachi Garg',98),
(2, 'Nidhi Sharma',90),
(3, 'Namita',89);

DELIMITER //

CREATE PROCEDURE GetStudent(IN sid INT)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SELECT 'Error occurred!' AS Message;
    END;

    SELECT name, marks
    FROM Students
    WHERE student_id = sid;
END //

DELIMITER ;

CALL GetStudent(1);

DELIMITER //

CREATE FUNCTION GetGrade(m INT)
RETURNS VARCHAR(5)
DETERMINISTIC
BEGIN
    DECLARE grade VARCHAR(5);

    IF m >= 90 THEN SET grade = 'A';
    ELSEIF m >= 70 THEN SET grade = 'B';
    ELSE SET grade = 'C';
    END IF;

    RETURN grade;
END //

DELIMITER ;

SELECT name, GetGrade(marks) AS Grade FROM Students;

DELIMITER //

CREATE PROCEDURE LoopExample()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 3 DO
        SELECT i AS Number;
        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;

CALL LoopExample();