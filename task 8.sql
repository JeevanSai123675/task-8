DELIMITER //

CREATE PROCEDURE GetStudentByState(IN state_name VARCHAR(50))
BEGIN
    SELECT * FROM students WHERE state = state_name;
END //

DELIMITER ;
DELIMITER //

CREATE FUNCTION GetTotalMarks(m1 INT, m2 INT, m3 INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SET total = m1 + m2 + m3;
    RETURN total;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE CheckPassOrFail(IN marks INT, OUT result VARCHAR(10))
BEGIN
    IF marks >= 40 THEN
        SET result = 'Pass';
    ELSE
        SET result = 'Fail';
    END IF;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE CheckPassOrFail(IN marks INT, OUT result VARCHAR(10))
BEGIN
    IF marks >= 40 THEN
        SET result = 'Pass';
    ELSE
        SET result = 'Fail';
    END IF;
END //

DELIMITER ;