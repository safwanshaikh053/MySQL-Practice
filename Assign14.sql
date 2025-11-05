CREATE TABLE stdtable (student_id INT PRIMARY KEY AUTO_INCREMENT, 
student_name VARCHAR(30) NOT NULL ,
department VARCHAR(30),
 gender VARCHAR(5),
 age INT,
 marks INT);
 
 INSERT INTO stdtable VALUES
(1, "Shaikh Safwan", "Mech","M",22,85),
(2, "Riya", "Civil", "F",20,79),
(3, "Syed Hadi", "Electrical","M",21,99),
(4, "Shaikh Arsalan", "Computer Science","M",19,97),
(5, "Shaikh Junaid", "Artificial Intelligence","M",20,87),
(6 , "Diya", "Artificial Intelligence","F",21,98),
(7, "Shaikh Asif", "Computer Science","M",24,92),
(8, "Onkar Oberoi", "Mech","M",21,77);


/*Q1 to display no of students in each department*/
SELECT department, COUNT(student_name)
FROM stdtable 
GROUP BY department;

/*Q.2 to find average marks of students in each department*/
SELECT department, AVG(marks)
FROM stdtable
GROUP BY department;
/*Q.3 to display no of male and female students*/
SELECT gender, COUNT(gender)
FROM stdtable
GROUP BY gender;

/*Q.4 to find max. marks scored by students in each department*/
SELECT department, MAX(marks)
FROM stdtable
GROUP BY department;
/*Q.5  average age of students grouped  by department and gender*/

SELECT department,gender, avg(age)
FROM stdtable
GROUP BY department, gender;

/*Q.6 total marks obtained by students in each department*/
SELECT department, SUM(marks)
FROM stdtable
GROUP BY department;
/*Q. 7 minimum marks obtained by male and female students*/

SELECT gender, MIN(marks)
FROM stdtable
GROUP BY gender;
/* Q.8 count no. of students in each age group*/
SELECT age, COUNT(student_name)
FROM stdtable
GROUP BY age;
/* Q. 9 department wise student count and average marks*/
SELECT department, COUNT(student_name),AVG(marks)
FROM stdtable
GROUP BY department;
/* Q.10 total no. of students group by department and age */
SELECT department, COUNT(student_name), age
FROM stdtable
GROUP BY department,age;