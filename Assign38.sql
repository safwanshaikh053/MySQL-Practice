
Q.1
SELECT CURDATE() AS current_date;

Q.2
SELECT NOW() AS current_datetime;

Q.3
SELECT emp_id, emp_name, YEAR(joining_date) AS year_of_joining
FROM employee;

Q.4 Find the month number and month name of joining
SELECT emp_id, emp_name, 
       MONTH(joining_date) AS month_number, 
       MONTHNAME(joining_date) AS month_name
FROM employee;

Q.5. Find the day number and day name of joining
SELECT emp_id, emp_name, 
       DAY(joining_date) AS day_number, 
       DAYNAME(joining_date) AS day_name
FROM employee;

Q.6 how many days has each employee has worked till today

SELECT emp_id, emp_name, 
       DATEDIFF(CURDATE(), joining_date) AS days_worked
FROM employee;

Q.7. how many days has each employee has worked till today

SELECT emp_id, emp_name, 
       TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) AS years_worked
FROM employee;

Q.8. Find the last day of the month in which employee was hired
SELECT emp_id, emp_name, 
       LAST_DAY(joining_date) AS last_day_of_joining_month
FROM employee;
