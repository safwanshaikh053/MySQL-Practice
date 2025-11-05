CREATE TABLE employee (employee_id INT PRIMARY KEY AUTO_INCREMENT, 
customer_name VARCHAR(30), 
department VARCHAR(30),
salary INT,
age INT,
gender VARCHAR(10),
city VARCHAR(30));

INSERT INTO employee VALUES
(1, "Mohammed Safwan", "HR", 60000, 27,"Male", "Ahmednagar" ), 
(2, "Preeti Jain", "Sales", 58000, 24,"Female", "Mumbai" ),
(3, "Shaikh Arsalan", "Developer", 80000, 26,"Male", "Thane" ),
(4, "Fatema Shaikh", "Finance", 70000, 24,"Female", "Aurangabad" ),
(5, "Khan Junaid", "Network Security", 85000, 22,"Male", "Pune" ),
(6, "Diya Sharma", "Sales", 55000, 23,"Female", "Pune" ),
(7, "Aditi Verma", "IT", 90000, 27,"Female", "Bangalore" );

/*Q1*/
 SELECT *FROM employee 
 WHERE department = "IT" AND salary>=50000;
 /*Q.2*/
 SELECT *FROM employee 
 WHERE city = "Mumbai" OR "Delhi";
 /*Q.3*/
 SELECT *FROM employee 
 WHERE  NOT department = "HR";
 /*Q.4*/
 SELECT *FROM employee 
 WHERE department = "Finance" XOR SALARY >40000;
 /*Q.5*/
 SELECT *FROM employee 
 WHERE  department = "sales" AND( salary>= 30000 OR age< 25);
/*Q.6*/
 SELECT *FROM employee 
 WHERE  NOT city = "Pune" AND salary> 35000;
 /*Q.7*/
  SELECT *FROM employee 
 WHERE NOT  department = "Finance"  OR department = "IT " ;
 
 /*Q.8*/
 
  SELECT *FROM employee 
 WHERE   gender = "Male" XOR( salary> 60000 AND department= "HR");
 /*Q.9*/
   SELECT *FROM employee 
 WHERE   age > "30" AND( department=  "IT" OR department= "Finance");
 
  /*Q.10*/
SELECT *FROM employee 
 WHERE  NOT city = "Delhi" XOR salary< 25000;