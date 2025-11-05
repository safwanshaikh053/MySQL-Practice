
/* TASK ON TRIGGERS, CURSOR*/
/* while updating salary as negative value make a trigger to change the value to 0*/
DELIMITER //
CREATE TRIGGER NegativeSalaryToZero
BEFORE UPDATE ON employee FOR EACH ROW
BEGIN
	IF NEW.salary<=0 THEN
    SET NEW.salary = 0;
    END IF;
END //
DELIMITER ;
SHOW TRIGGERS; 

