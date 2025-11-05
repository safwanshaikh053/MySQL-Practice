
        /*Task 20*/

/*Q.1 increase salary by percentage*/
DELIMITER $$
CREATE PROCEDURE IncreaseSalary1(
    IN emp_id INT,
    INOUT sal DECIMAL(10,2)
)
BEGIN
    DECLARE current_salary INT default 1;
    SELECT salary INTO current_salary FROM employee e 
    WHERE e.emp_id = emp_id;
    SET sal = current_salary * 1.10;
END $$
DELIMITER ;


CALL IncreaseSalary1(1, @salary);
SELECT @salary;


/*Q.2 students marks status*/

DELIMITER $$

CREATE PROCEDURE CheckResult1(
    IN in_student_id INT,
    INOUT status VARCHAR(20)
)
BEGIN
    DECLARE student_marks INT;

    SELECT Marks INTO student_marks
    FROM students
    WHERE id = in_student_id;

    IF student_marks >= 40 THEN
        SET status = 'PASS';
    ELSE
        SET status = 'FAIL';
    END IF;
END $$

DELIMITER ;

SET @student_id = 1;
SET @status = '';

CALL CheckResult1(@student_id, @status);
SELECT @status;



