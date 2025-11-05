
CREATE TABLE customer (customer_id INT PRIMARY KEY AUTO_INCREMENT, 
customer_name VARCHAR(30), 
city VARCHAR(30));

INSERT INTO customer VALUES
(1,"Shaikh Safwan", "Auranagabad"),
(2,"Arsalan Shaikh", "Vashi"),
(3,"Junaid Khan", "Dongri"),
(4,"Asif Shaikh", "Solapur"),
(5,"Prateek kale", "Pune"),
(6,"Prem Singh", "Navi Mumbai"),
(7,"Raj Shukla", "Solapur"),
(8,"Varun Kamble", "Pune");
SELECT*FROM customer;

CREATE TABLE bank (account_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
customer_id INT, 
bank_name VARCHAR(30), 
balance  DECIMAL (8,3),
FOREIGN KEY (customer_id) REFERENCES customer (customer_id));


INSERT INTO bank VALUES
(101,1,"Kotak Mahindra bank",55000.000),
(102,2,"HDFC bank",55000.000),
(103,3,"Axis bank",30000.000),
(104,4,"ICICI bank",NULL),
(105,5,"SBI bank",35000.000),
(106,6,NULL,40000.000),
(107,7,"Punjab bank",85000.000),
(108,8,"RBL bank",60000.000);

SELECT*FROM bank;

/*Q.1. List all customers with their bank accounts*/
SELECT c.customer_name, b.account_id, b.bank_name
FROM customer c
JOIN bank b ON c.customer_id = b.customer_id;

/*Q.2 Show customers with their account balance*/
SELECT c.customer_name, b.account_id, b.balance
FROM customer c
JOIN bank b ON c.customer_id = b.customer_id;
 /*Q.3 Find all customers who live in ‘Pune’ with their bank details*/
SELECT c.customer_name, c.city, b.bank_name, b.balance
FROM customer c
JOIN bank b ON c.customer_id = b.customer_id
WHERE c.city = 'Pune';
/*Q.4 List customers who don’t have any bank account*/
SELECT c.customer_name, c.city
FROM customer c
LEFT JOIN bank b ON c.customer_id = b.customer_id
WHERE b.account_id IS NULL;
/*Q.5. Show all bank accounts and their customer names*/
SELECT b.account_id, b.bank_name, c.customer_name
FROM bank b
JOIN customer c ON b.customer_id = c.customer_id;
/*Q.6Display customers with more than 50,000 balance*/
SELECT c.customer_name, b.bank_name, b.balance
FROM customer c
JOIN bank b ON c.customer_id = b.customer_id
WHERE b.balance > 50000;
