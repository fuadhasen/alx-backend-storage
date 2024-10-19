-- sql script to creates a stored procedure Average score.
-- that computes and store the average score for a student.

DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(
    IN u_id INT
)
BEGIN
    DECLARE avg FLOAT;
    SELECT AVG(score) INTO avg
    FROM corrections
    WHERE user_id = u_id

    UPDATE users
    SET average_score = avg
    WHERE id = u_id;

END $$
DELIMITER ;