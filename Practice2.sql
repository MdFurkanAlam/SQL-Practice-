/*
Create a table to store student info (roll_no, name, city, marks).
Insert following data in the table :
110, "adam", "Delhi", 76
108, "bob", "Mumbai", 65
124, "casey", "Pune", 94
112, "duke", "Pune", 80

• Select all students who scored 75+
• Find names of all cities where students are from
• Find the maximum marks of students from each city
• Find the average of the class
• Add a new column grade, assign grade such that :
marks > 80, grade = 0
marks 70-80, grade = A
marks 60-70, grade = B

*/


CREATE TABLE student(
roll_no INT,
name VARCHAR(50),
city VARCHAR(50),
marks INT
);

INSERT INTO student
(roll_no,name,city,marks)
VALUES
(110,'Adam','Delhi',76),
(108,'Bob','Mombai',65),
(124,'Casey','Pune',94),
(112,'Duke','Pune',80);

SELECT * FROM student;

SELECT name,marks FROM student
WHERE marks>75;

SELECT DISTINCT city FROM student;

SELECT city, MAX(marks) 
FROM student
GROUP BY city;

SELECT avg(marks) FROM student;

ALTER TABLE student
ADD COLUMN grade VARCHAR(5);

UPDATE student
SET grade  = 'O'
WHERE marks>=80;

UPDATE student
SET grade  = 'A'
WHERE marks>=70 AND marks<80;

UPDATE student
SET grade  = 'B'
WHERE marks>=60 AND marks<70;