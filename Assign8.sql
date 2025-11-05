INSERT INTO  students
VALUES (10, "Abdallah Alkaseri", "59% ","abdallahalkaseri123@gmail.com","C");
INSERT INTO  students
VALUES (11, "Syed Yamin", "45% ","syedyamin123@gmail.com","D");
SELECT * FROM students ORDER BY Sname ASC;
ALTER TABLE students ADD( City_name VARCHAR(25) NOT NULL);
UPDATE students SET City_name = "Mumbai" WHERE id = 1;
UPDATE students SET City_name = "Mumbai" WHERE id = 2;
UPDATE students SET City_name = "Mumbai" WHERE id = 3;
UPDATE students SET City_name = "Mumbai" WHERE id = 4;
UPDATE students SET City_name = "Mumbai" WHERE id = 5;
UPDATE students SET City_name = "Mumbai" WHERE id = 5;
UPDATE students SET City_name = "Mumbai" WHERE id = 6;
UPDATE students SET City_name = "Mumbai" WHERE id = 7;
UPDATE students SET City_name = "Mumbai" WHERE id = 8;
UPDATE students SET City_name = "Mumbai" WHERE id = 9;
UPDATE students SET City_name = "Mumbai" WHERE id = 10;
UPDATE students SET City_name = "Mumbai" WHERE id = 11;

UPDATE students
SET City_name = "Navi Mumbai"
WHERE id= 3;
UPDATE students SET City_name = "Ahmednagar" WHERE id= 2;
UPDATE students SET City_name = "Ajanta" WHERE id= 4;
UPDATE students SET City_name = "Solapur" WHERE id= 5;
UPDATE students SET City_name = "Aurangabad" WHERE id= 6;
UPDATE students SET City_name = "Lucknow" WHERE id= 7;
UPDATE students SET City_name = "New Delhi" WHERE id= 8;
UPDATE students SET City_name = "Jalgaon" WHERE id= 9;
UPDATE students SET City_name = "Nashik" WHERE id= 10;
UPDATE students SET City_name = "Thane" WHERE id= 11;

ALTER TABLE students ADD( Marks INT  NOT NULL);
UPDATE students SET Marks = 94 WHERE id= 1;
UPDATE students SET Marks = 65 WHERE id= 2;
UPDATE students SET Marks = 74 WHERE id= 3;
UPDATE students SET Marks = 82 WHERE id= 4;
UPDATE students SET Marks = 56 WHERE id= 5;
UPDATE students SET Marks = 96 WHERE id= 6;
UPDATE students SET Marks = 90 WHERE id= 7;
UPDATE students SET Marks = 89 WHERE id= 8;
UPDATE students SET Marks = 34 WHERE id= 9;
UPDATE students SET Marks = 76 WHERE id= 10;
UPDATE students SET Marks = 76 WHERE id= 11;
USE safwandb;
SELECT MIN(Marks) FROM students; 
SELECT MAX(Marks) FROM students; 
SELECT SUM(Marks) FROM students; 
SELECT COUNT(Marks) FROM students;
SELECT AVG(Marks) FROM students;  

SELECT Grade FROM students;
SELECT Grade AS Result FROM students;
SELECT * FROM students; 
select*from Product_details;