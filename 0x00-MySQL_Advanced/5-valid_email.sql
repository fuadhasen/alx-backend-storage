-- sql script to validate email

DELIMITER $$
CREATE TRIGGER trig_after_email_changed
BEFORE UPDATE
ON users
FOR EACH Row
BEGIN
    IF OLD.email != NEW.email THEN
    SET NEW.valid_email = 0;
    END IF;
END $$

DELIMITER ;