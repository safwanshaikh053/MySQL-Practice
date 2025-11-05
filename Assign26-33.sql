/*TASK 26*/
WITH RECURSIVE Numbers AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1 FROM Numbers WHERE num < 10
)
SELECT num FROM Numbers;

/*TASK 27*/

WITH RECURSIVE Numbers AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1 FROM Numbers WHERE num < 10
)
SELECT SUM(num) AS total_sum FROM Numbers;

/*TASK 28*/

WITH RECURSIVE Numbers AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1 FROM Numbers WHERE num < 5
)
SELECT num, num * num AS square FROM Numbers;

/*TASK 30*/

WITH RECURSIVE Numbers AS (
    SELECT 2 AS num
    UNION ALL
    SELECT num + 2 FROM Numbers WHERE num + 2 <= 30
)
SELECT num FROM Numbers;

/*TASK 31*/

WITH RECURSIVE Numbers AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 2 FROM Numbers WHERE num + 2 <= 30
)
SELECT num FROM Numbers;

/*TASK 32*/

WITH RECURSIVE Numbers AS (
    SELECT 20 AS num
    UNION ALL
    SELECT num - 1 FROM Numbers WHERE num > 1
)
SELECT num FROM Numbers;


/*Task 33*/

DELIMITER //

CREATE PROCEDURE Print8Table()
BEGIN
    DECLARE i INT DEFAULT 1;

    REPEAT
        SELECT CONCAT('8 x ', i, ' = ', 8 * i) AS result;
        SET i = i + 1;
    UNTIL i > 10
    END REPEAT;
END //

DELIMITER ;

-- Call the procedure
CALL Print8Table();




