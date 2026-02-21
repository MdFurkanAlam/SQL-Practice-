/*
Create a database for your college.
Create a table named Teacher to store (id, name, subject, salary)
Insert following data in the table :
23, "ajay", "math", 50,000
47, "bharat", "english", 60,000
18, "chetan", "chemistry", 45,000
9, "divya", "physics", 75,000

• Select teachers whose salary is more than 55k
• Rename the salary column of teacher table to ctc
• Update salary of all teachers by giving them an increment of 25%
• Add a new column for teachers called city. The default city should be "Gurgaon"
• Delete the salary column for teacher table



*/

CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE teacher(
id INT,
name VARCHAR(30),
subject VARCHAR(35),
salary INT,
PRIMARY KEY(id) 
);

INSERT INTO teacher
(id,name,subject,salary)
VALUES 
(23,'Ajay','math',50000),
(47,'Bharat','English',60000),
(18,'Chetan','Chemistry',45000),
(9,'Divya','Physics',75000);


SELECT * FROM teacher;

SELECT * FROM teacher
WHERE salary>55000;

ALTER TABLE teacher
CHANGE COLUMN salary ctc INT;

UPDATE teacher
SET ctc = ctc+(0.25)*ctc; 

ALTER TABLE teacher 
ADD COLUMN city VARCHAR(35) DEFAULT 'Gurgaon';

ALTER TABLE teacher 
DROP COLUMN ctc;

