-- sql script to creates a stored procedure AddBonus.
-- that adds a new correction for a student.

DELIMITER $$
CREATE PROCEDURE AddBonus(
    IN user_id INT,
    IN project_name VARCHAR(255),
    IN score INT
)
BEGIN
    DECLARE p_id INT;
    DECLARE exist_check INT;

    SELECT COUNT(*)
    FROM projects WHERE name = project_name
    INTO exist_check;

    IF exist_check > 0 THEN
        SELECT id INTO p_id FROM projects WHERE name = project_name;
        INSERT INTO corrections (user_id, project_id, score)
        VALUES (user_id, p_id, score);

    ELSE
        INSERT INTO projects (name) VALUES (project_name);
        SET @project_nw = LAST_INSERT_ID();
        INSERT INTO corrections (user_id, project_id, score)
        VALUES (user_id, @project_nw, score);

    END IF;
END $$
DELIMITER ;