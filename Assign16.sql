
/*TASK
Q.1*/
SELECT emp_id, emp_name, salary
FROM employee
WHERE salary = (									/*  database : mycompanydb*/
    SELECT MAX(salary) 
    FROM employee
);


/* Q.2*/
SELECT id, Sname, Marks
FROM students
WHERE Marks > (										/*  database : safwandb*/
    SELECT AVG(Marks) 
    FROM students
);



/*Q.3*/

SELECT emp_id, emp_name, dept_id
FROM employee
WHERE dept_id = (
    SELECT dept_id 
    FROM employee
    WHERE emp_name = 'Hannah'
);


/*Q.4*/

SELECT id, Pname, Pprice
FROM Product
WHERE Pprice > (
    SELECT Pprice 
    FROM product
    WHERE Pname = 'MOONG'
);

