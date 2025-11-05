CREATE TABLE customers 
(customer_id INT PRIMARY KEY ,
customer_name VARCHAR(30),
phone_no VARCHAR(10));
ALTER TABLE customers ADD COLUMN city VARCHAR(30);
ALTER TABLE customers ADD COLUMN email VARCHAR(50);

INSERT INTO customers VALUES
(1,"Shaikh Safwan", "912324323", "Nagpur","safwanshaikh053@gmail.com"),
(2,"Arsalan Shaikh", "9893652739", "Jaipur","arsalanshaikh3@gmail.com"),
(3,"Junaid Khan", "778965402", "Solapur","junaidkhan@gmail.com"),
(4,"Asif Shaikh", "7798224765", "Mumbai","asifshaikh@gmail.com"),
(5,"Prateek kale", "8943765928", "Kolhapur","prateekkale@gmail.com"),
(7,"Raj Shukla", "9876386473", "Auranagabd","rajshukla@gmail.com"),
(8,"Varun Shukla", "8765456745", "New Delhi","varunshukla@gmail.com");

SELECT* FROM customers;
/*Q.1.*/
SELECT*FROM customers WHERE customer_name LIKE 'A%';
/*Q.2.*/
SELECT*FROM customers WHERE city like '%pur';
/*Q.3.*/
SELECT*FROM customers WHERE email LIKE '%gmail%';
/*Q.4.*/
SELECT*FROM customers WHERE customer_name LIKE '%an%';
/*Q.5.*/
SELECT*FROM customers WHERE phone_no LIKE '98%';
/*Q.6. exactly 5 characters long*/

SELECT*FROM customers WHERE customer_name  LIKE '_____';
/*Q.7.*/
SELECT*FROM customers WHERE city like '_a%';
