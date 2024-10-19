-- sql script to creates a stored procedure Average score.
-- that computes and store the average score for a student.

DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INT
)
BEGIN
    DECLARE avg FLOAT;
    SELECT SUM(score) / COUNT(*) INTO avg
    FROM corrections
    WHERE corrections.user_id = user_id;

    UPDATE users
    SET average_score = avg
    WHERE id = user_id;

END $$
DELIMITER ;