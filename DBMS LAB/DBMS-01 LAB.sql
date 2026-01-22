CREATE DATABASE LAB_01_db;
USE LAB_01_db;

-- Creating table
CREATE TABLE t1 (
    name VARCHAR(100),
    id INT,
    course VARCHAR(100),
    city VARCHAR(100),
    country VARCHAR(100)
);

-- Rename table
RENAME TABLE t1 TO table1;

-- Modify table (add column AFTER rename)
ALTER TABLE table1
ADD age INT;

-- Insert data (explicit column order = no mistakes)
INSERT INTO table1 (name, id, course, city, country, age) VALUES
('Prachi', 2420800, 'BTech AI-DS', 'Punjab', 'India', 19),
('Nidhi', 2420778, 'BTech AI-DS', 'HARYANA', 'India', 20),
('Sanchi', 2420831, 'BTech AI-DS', 'Punjab', 'India', 19),
('Sanjana', 2420834, 'BTech AI-DS', 'HIMACHAL PARDESH', 'India', 19),
('Sarika', 2420804, 'BTech AI-DS', 'Himachal Pradesh', 'India', 18);

-- Delete a specific record
DELETE FROM table1
WHERE name = 'Prachi';

-- Display table before truncate
SELECT * FROM table1;

-- Remove all records (structure remains)
TRUNCATE TABLE table1;

-- Final check
SELECT * FROM table1;