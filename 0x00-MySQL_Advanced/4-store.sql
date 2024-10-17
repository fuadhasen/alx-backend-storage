-- sql script to create trigger in mysql

DELIMITER $$
CREATE TRIGGER trig_after_order_insert
AFTER INSERT
ON orders
FOR EACH Row
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE name = NEW.item_name;

END $$

DELIMITER ;