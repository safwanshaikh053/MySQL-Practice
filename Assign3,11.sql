/* JOINS - INNER, OUTER, LEFT, RIGHT*/

CREATE DATABASE mycompanydb;

CREATE TABLE company (dept_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
dept_code VARCHAR(30) NOT NULL,
dept_name VARCHAR(50) NOT NULL,
dept_location ENUM ("Pune", "Mumbai", "Aurangabad"));
ALTER TABLE company MODIFY dept_location ENUM ("Pune", "Mumbai","Aurangabad") NOT NULL;
INSERT INTO company VALUES
(1,"CO123", "Human resources","Pune"),
(2,"CO342", "Sales","Mumbai"),
(3,"CO893", "Marketing","Pune"),
(4,"CO769", "Finance","Aurangabad"),
(5,"CO231", "Technical","Mumbai");
SELECT* FROM company;

CREATE TABLE employee (emp_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
emp_name VARCHAR (30) NOT NULL,
emp_code VARCHAR(20) NOT NULL,
gender ENUM("Male","Female","Transgender"),
birth_date DATE,
joining_date DATETIME,
work_time TIME,
salary DECIMAL,
rate FLOAT);
ALTER TABLE employee ADD profile_pic BLOB ;


ALTER TABLE  employee ADD dept_id INT NOT NULL;
ALTER TABLE employee ADD CONSTRAINT dept_id  FOREIGN KEY (dept_id) REFERENCES company (dept_id);

INSERT INTO employee VALUES
(1,"Shaikh Safwan","CO283","Male",'1997-12-14','2019-12-31', '09:00:00', 55000.500, 4.5,"Null", 1 ),
(2,"Shaikh Arsalan","CO929","Male",'1996-02-24','2020-10-21', '08:00:00', 60000.500, 4.7,"Null", 2 ),
(3,"Shaikh Safwan","CO283","Male",'1200-01-01','2017-03-31', '09:00:00', 50000.500, 4.0,"Null", 3 ),
(4,"Shaikh Safwan","CO283","Male",'2000-06-18','2021-06-28', '07:00:00', 47000.500, 4.2,"Null", 4 ),
(5,"Shaikh Safwan","CO283","Male",'1999-08-11','2018-04-17', '06:00:00', 35000.500, 3.5,"Null", 5 );
SELECT* FROM employee;
SELECT * FROM company
INNER JOIN employee ON company.dept_id=employee.dept_id;
SELECT * FROM company
LEFT JOIN employee ON company.dept_id=employee.dept_id;
SELECT * FROM company
RIGHT JOIN employee ON company.dept_id=employee.dept_id;
SELECT * FROM company
LEFT JOIN employee ON company.dept_id=employee.dept_id
UNION
SELECT * FROM company
RIGHT JOIN employee ON company.dept_id=employee.dept_id;


