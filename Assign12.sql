USE safwandb;

CREATE TABLE institute (institute_id INT PRIMARY KEY AUTO_INCREMENT, 
institute_name VARCHAR(30) NOT NULL ,
city VARCHAR(35));
INSERT INTO institute VALUES
(1, "CDAC", "Mumbai"),
(2, "MIT", "Pune"),
(3, "IIT", "Bombay"),
(4, "NMIMS", "Mumbai" ),
(5, "JSPM", "Pune"),
(6, "BAMU", "Aurangabad" ),
(7, "CDAC- ACTS", "Pune" ),
(8, "CDAC- IACSD", "Pune" );
SELECT* FROM institute;

CREATE TABLE student (student_id INT PRIMARY KEY AUTO_INCREMENT, 
student_name VARCHAR(30) NOT NULL ,
age INT NOT NULL,
insti_id INT,
course VARCHAR(30), FOREIGN KEY (insti_id) REFERENCES institute (institute_id));


INSERT INTO student VALUES
(1, "Shaikh Safwan", 21,8, "PG-DAC"),
(2, "Quazi Zaid", 20,7, "Machine Learning"),
(3, "Syed Hadi", 24,6, "Artificial Intelligence"),
(4, "Shaikh Arsalan", 23,5, "Data Science"),
(5, "Shaikh Junaid", 22 ,4, "Big Data Hadoop"),
(6, "Ali Alkaseri", 22,3, "Cloud Computing"),
(7, "Abdallah ALkaseri", 21,2,"Java developer"),
(8, "MD Mujahid", 23, 1,"Web Development");
SELECT* FROM student;

 /*Q1*/
 
SELECT s.student_name, i.institute_name
FROM student s
INNER JOIN institute i
ON s.insti_id = i.institute_id;
 /*Q2*/
 SELECT s.student_name, 
       IFNULL(i.institute_name, 'Not Assigned') AS institute_name
FROM student s
LEFT JOIN institute i
ON s.insti_id = i.institute_id;

  /*Q3*/
  
  SELECT i.institute_name, 
       IFNULL(s.student_name, 'No Student') AS student_name
FROM institute i
LEFT JOIN student s
ON i.institute_id = s.insti_id;

   /*Q4*/
   
   SELECT s.student_name, i.institute_name
FROM student s
LEFT JOIN institute i
ON s.insti_id = i.institute_id

UNION

SELECT s.student_name, i.institute_name
FROM student s
RIGHT JOIN institute i
ON s.insti_id = i.institute_id;

    /*Q5*/
SELECT s.student_name, s.course, i.institute_name
FROM student s
INNER JOIN institute i
ON s.insti_id = i.institute_id
WHERE i.city = 'Mumbai';
