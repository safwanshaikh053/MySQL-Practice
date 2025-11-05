USE safwandb;
DELIMITER //
 CREATE PROCEDURE CheckAge(IN age INT)
 BEGIN 
 if age >=18 THEN
  SELECT 'You are elegible to vote';
END IF;
END//
DELIMITER //
CALL CheckAge(19);
CALL CheckAge(10);



DELIMITER //
 CREATE PROCEDURE CheckNumber(IN num INT)
 BEGIN 
 if num >0 THEN
  SELECT 'positive no.';
 else
  SELECT 'negative no.';
END IF;
END//
DELIMITER //
CALL CheckNumber(19);
CALL CheckNumber(-2);


DELIMITER //
CREATE PROCEDURE checkGrade(IN marks int)
BEGIN 
IF marks >=90 THEN
   SELECT 'Grade A';
ELSEIF marks>=75 THEN
   SELECT ' Grade B';
ELSEIF marks>=50 THEN
   SELECT ' Grade C';
ELSE 
    SELECT 'Fail';
END IF;
END//
DELIMITER ;   

CALL checkGrade(76);
   
   
   
DELIMITER //
CREATE PROCEDURE checkMonth(IN months INT)
BEGIN 
CASE months
WHEN 1 THEN SELECT "January";
WHEN 2 THEN SELECT "February";
WHEN 3 THEN SELECT "March";
WHEN 4 THEN SELECT "April";
WHEN 5 THEN SELECT "May";
WHEN 6 THEN SELECT "June";
WHEN 7 THEN SELECT "July";
WHEN 8 THEN SELECT "August";
WHEN 9 THEN SELECT "September";
WHEN 10 THEN SELECT "october";
WHEN 11 THEN SELECT "November";
WHEN 12 THEN SELECT "December";
ELSE SELECT  "INVALID INPUT";
END CASE;
END //
DELIMITER ;

CALL checkMonth(11);

DELIMITER //
 CREATE PROCEDURE Checkevenodd(IN num INT)
 BEGIN 
 if num % 2 = 1 THEN
  SELECT 'Odd no.';
 else
  SELECT 'Even no.';
END IF;
END//
DELIMITER //
CALL Checkevenodd(98);


DELIMITER //
CREATE PROCEDURE ageGroup1(IN age int)
BEGIN 
IF age <13 THEN
   SELECT 'Child';
ELSEIF age >= 13 && age <=19 THEN
   SELECT 'Teenage';
ELSEIF age >= 20 && age <=59 THEN
   SELECT ' Adult';
ELSE 
    SELECT 'Senior Citizen';
END IF;
END//
DELIMITER ;  

CALL ageGroup1(8);
CALL ageGroup1(20);

DELIMITER //
CREATE PROCEDURE TRAFFICSIG2(IN TRAFFICSIGNAL VARCHAR(10))
BEGIN 
CASE TRAFFICSIGNAL
WHEN "R "THEN SELECT "STOP";
WHEN "Y" THEN SELECT "WAIT";
WHEN "G" THEN SELECT "GO";
ELSE SELECT  "INVALID SIGNAL";
END CASE;
END //
DELIMITER ;

CALL  TRAFFICSIG1("Y");
CALL  TRAFFICSIG2("G");


DELIMITER //
CREATE PROCEDURE unit_cost3(IN unit int, OUT fare INT)
BEGIN 
IF unit <=100 THEN
   SELECT unit * 5 INTO fare;
ELSEIF unit <= 300 THEN
   SELECT unit * 7 INTO fare;
ELSE 
    SELECT  unit * 10 INTO fare;
END IF;
END//
DELIMITER ;  

CALL unit_cost3(136, @fare);
SELECT @fare AS total_fare;

/* LOOPS ==> assignment EVEN no. */

DELIMITER //
CREATE PROCEDURE print_even(IN num INT)
BEGIN 
DECLARE i INT DEFAULT 1;
DECLARE e INT DEFAULT 1;
DECLARE alleven VARCHAR(100) DEFAULT "";
label1 : REPEAT
	IF i%2=0 THEN SELECT i INTO e;
    SET alleven= CONCAT(alleven,e, "");
    END IF;
    SET i=i+1;
    UNTIL I> num
END REPEAT label1; 
 SELECT alleven AS even;
END //
DELIMITER ;
DROP PROCEDURE print_even;
CALL print_even(30);


/* LOOPS ==> assignment ODD no. */

DELIMITER //
CREATE PROCEDURE print_odd(IN num INT)
BEGIN 
DECLARE i INT DEFAULT 1;
DECLARE o INT DEFAULT 1;
DECLARE allodd VARCHAR(300) DEFAULT "";
label2 : REPEAT
	IF  NOT i%2=0 THEN SELECT i INTO o;
    SET allodd= CONCAT(allodd,o, "");
    END IF;
    SET i=i+1;
    UNTIL i > num
END REPEAT label2; 
 SELECT allodd AS odd;
END //
DELIMITER ;

DROP PROCEDURE print_odd;
CALL print_odd(60);


/* Print 1-20 in reverse order */

DELIMITER //
CREATE PROCEDURE rev_order(IN num INT)
BEGIN 
DECLARE i INT DEFAULT num;
DECLARE desc_order VARCHAR(400) DEFAULT "";
label : WHILE i>= 0 DO
	SET desc_order = CONCAT(desc_order, i,",");
    SET i=i-1;
	END WHILE label;
SELECT desc_order;
END //
DELIMITER ;
DROP PROCEDURE rev_order;
CALL rev_order(10);


/* Print table of 8 */

DELIMITER //
CREATE PROCEDURE tableOf8(IN num INT)
BEGIN 
DECLARE i INT DEFAULT 1;
DECLARE multiplesOf8 VARCHAR(300) DEFAULT '';
DECLARE m INT DEFAULT 1;
label3 : REPEAT
SET m=i*8;
    SET multiplesOf8 = CONCAT(multiplesOf8,m, ",");
    SET i=i+1;
    UNTIL i > num
END REPEAT label3; 
 SELECT multiplesOf8 ;
END //
DELIMITER ;
DROP PROCEDURE tableOf8;
CALL tableOf8(10);


/* Cube of number */
DELIMITER //
CREATE PROCEDURE cubeOfNum(IN num INT)
BEGIN 
DECLARE i INT DEFAULT 1;
DECLARE cubes VARCHAR(300) DEFAULT '';
DECLARE m INT DEFAULT 1;
label4 : REPEAT
SET m=i*i*i;
    SET cubes = CONCAT(cubes,m, ",");
    SET i=i+1;
    UNTIL i > num
END REPEAT label4; 
 SELECT cubes ;
END //
DELIMITER ;
DROP PROCEDURE cubes;
CALL cubeOfNum(10);


/* Factorial */
DELIMITER $$

CREATE PROCEDURE factorial(IN n INT, OUT result INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    SET result = 1;

    WHILE i <= n DO
        SET result = result * i;
        SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

CALL factorial(5, @ans);
SELECT @ans;
DROP PROCEDURE factorial;


/* FIBONACCI */

DELIMITER $$

CREATE PROCEDURE fibonacci()
BEGIN
    DECLARE a INT DEFAULT 0;
    DECLARE b INT DEFAULT 1;
    DECLARE c INT;
    DECLARE count INT DEFAULT 1;

    REPEAT
        SELECT a;
        SET c = a + b;
        SET a = b;
        SET b = c;
        SET count = count + 1;
    UNTIL count > 10
    END REPEAT;
END$$

DELIMITER ;
CALL fibonacci();
/*This will print the first 10 terms of the Fibonacci series (0,1,1,2,3,5,8,13,21,34).*/
