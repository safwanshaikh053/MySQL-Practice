
/*Task 18*/

/*Q.1 Employee by department*/

DELIMITER $$
																			/*mycompanydb*/
CREATE PROCEDURE GetEmployeesByDept3(IN in_dept_name VARCHAR(50))
BEGIN
    SELECT emp_id, emp_name, dept_id, salary
    FROM employee
    WHERE dept_id = (
        SELECT dept_id
        FROM company
        WHERE dept_name = in_dept_name
    );
END $$
DELIMITER ;
 
 
 CALL GetEmployeesByDept3('Technical');

/*Q.2 Get Orders After Given Date */
DELIMITER $$
																		/*safwandb*/
CREATE PROCEDURE GetOrdersAfterDate(IN order_date DATE)
BEGIN
    SELECT order_id, customer_name, order_date
    FROM orders
    WHERE order_date > order_date;
END $$

DELIMITER ;

CALL GetOrdersAfterDate('2024-08-21');



