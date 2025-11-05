
/*Task - 19*/

/* Q.1 Maximum Salary*/
DELIMITER $$

CREATE PROCEDURE GetMaxSalary(OUT max_sal DECIMAL(10,2))
BEGIN
    SELECT MAX(salary) INTO max_sal
    FROM employee;
END $$

DELIMITER ;

CALL GetMaxSalary(@max_salary);
SELECT @max_salary;



/*Q.2 total student count*/

DELIMITER $$

CREATE PROCEDURE CountStudents1(OUT total_students INT)
BEGIN
    SELECT COUNT(*) INTO total_students
    FROM students;
END $$
DELIMITER ;
CALL CountStudents1(@total_std);
SELECT @total_std;

