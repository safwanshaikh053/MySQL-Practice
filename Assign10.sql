USE safwandb;
CREATE TABLE restaurant
 (restaurant_id INT NOT NULL PRIMARY KEY ,
 restaurant_name VARCHAR(30) NOT NULL,
 location VARCHAR(30) NOT NULL);
 
 INSERT INTO restaurant VALUES
(1,"Persian Darbar","Byculla"),
(2,"Shalimar","Mohammed Ali Road"),
(3,"Lime n spice","Dongri"),
(4,"Arabian Darbar","Byculla"),
(5,"Cafe Samundar","Byculla"),
(6,"Safeer Hotel","Mohammed Ali Road"),
(7,"Taj Hotel","Gateway"),
(8,"Grills and Rice", "Nagpada");
SELECT * FROM restaurant;

CREATE TABLE orders
 (
 order_id INT  PRIMARY KEY ,
 restaurant_id INT,
 customer_name VARCHAR(30) NOT NULL,
 amount DECIMAL(8,2),
 order_date DATE, 
 FOREIGN KEY (restaurant_id)  REFERENCES restaurant (restaurant_id));
 
INSERT INTO orders VALUES
(1, 2,"Shaikh Safwan",2102.12,'2025-08-21'),
(2,1,"Junaid Khan", 1528.21,'2025-12-23'),
(3,4,"Salman Khan", 1528.21,'2025-09-16'),
(4,5,"Shahrukh Khan", 1528.21,'2025-03-04'),
(5,8,"Amer Khan", 1528.21,'2025-10-19'),
(6,3,"Asif Shaikh", 1528.21,'2025-11-26'),
(7,7,"Prateek Chate", 1528.21,'2025-05-10'),
(8,6,"Arsalan Shaikh", 1528.21,'2025-07-10');
 
 SELECT * FROM orders;

 /*Q.1  List all orders with restaurant names */
 
SELECT o.order_id, o.customer_name, o.amount, o.order_date, r.restaurant_name
FROM orders o
 LEFT JOIN restaurant r ON o.restaurant_id = r.restaurant_id;
 
 /* Q.2 Show restaurant names with their order amounts*/
SELECT r.restaurant_name, o.amount
FROM restaurant r
JOIN orders o ON r.restaurant_id = o.restaurant_id;

/*Q.3 Find all orders placed at restaurants in ‘Mumbai’*/
SELECT o.order_id, o.customer_name, o.amount, r.restaurant_name, r.location
FROM orders o
JOIN restaurant r ON o.restaurant_id = r.restaurant_id
WHERE r.location = 'Mumbai'; 
/*Q.4 Get total sales (sum of amount) for each restaurant*/
SELECT r.restaurant_name, SUM(o.amount) AS total_sales
FROM restaurant r
JOIN orders o ON r.restaurant_id = o.restaurant_id
GROUP BY r.restaurant_name;

/* Q.5 nd restaurants that have no orders */
SELECT r.restaurant_id, r.restaurant_name, r.location
FROM restaurant r
LEFT JOIN orders o ON r.restaurant_id = o.restaurant_id
WHERE o.order_id IS NULL;
/*Q.6  List customers and restaurant names*/
SELECT o.customer_name, r.restaurant_name
FROM orders o
INNER JOIN restaurant r ON o.restaurant_id = r.restaurant_id;


/* Show restaurant and order details */
SELECT r.restaurant_name, r.location, o.order_id, o.customer_name, o.amount, o.order_date
FROM orders o
RIGHT JOIN restaurant r ON o.restaurant_id = r.restaurant_id;


