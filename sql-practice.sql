-- INSERT data
INSERT INTO users (username, firstName, lastName, age)
VALUES ('cpetersen', 'Corbin', 'Petersen', 47);

-- UPDATE existing data
UPDATE users
SET firstName = 'Carl'
WHERE id = 21;

-- DELETE existing data
DELETE FROM users
WHERE id = 21;

-- SELECT queries
SELECT CONCAT (firstName, " ", lastName)
AS first_and_last_name
FROM users
WHERE lastName = "Lee";

SELECT * FROM users
WHERE age > 21
ORDER BY age
LIMIT 10;