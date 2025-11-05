/*Use mycompanydb for  Q.1, Q,2, Q.3*/


/*Q.1*/
SELECT emp_id, emp_name, salary
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
    WHERE salary < (
        SELECT MAX(salary) FROM employee
    )
);

/*Q.2*/
SELECT dept_id, COUNT(*) AS emp_count
FROM employee
GROUP BY dept_id
HAVING COUNT(*) > (
    SELECT AVG(emp_count)
    FROM (
        SELECT COUNT(*) AS emp_count
        FROM employee
        GROUP BY dept_id
    ) AS dept_counts
);

/*Q.3*/
SELECT s.student_id, s.student_name, s.department, s.marks
FROM stdtable s
WHERE s.marks = (
    SELECT MAX(marks)
    FROM stdtable
    WHERE department = s.department
);
SELECT*FROM stdtable;

/*Q.4*/
SELECT customer_id, order_id, order_total
FROM orders
WHERE order_total > (
    SELECT AVG(order_total)
    FROM orders
);