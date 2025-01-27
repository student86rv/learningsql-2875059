SELECT 4 + 2;

SELECT 1 / 3;

SELECT 1 / 3.0;

SELECT 3 > 2;

SELECT 5 != 3;

SELECT first_name, quiz_points FROM people WHERE quiz_points > 70;

SELECT first_name, quiz_points FROM people 
WHERE quiz_points >= 70 ORDER BY quiz_points;

SELECT MAX(quiz_points), MIN(quiz_points) FROM people;

SELECT SUM(quiz_points) FROM people;

SELECT team, COUNT(*) FROM people GROUP BY team;

SELECT team, SUM(quiz_points) FROM people GROUP BY team;

SELECT team, SUM(quiz_points), SUM(quiz_points) / COUNT(*) 
FROM people GROUP BY team;

SELECT team, SUM(quiz_points), AVG(quiz_points) 
FROM people GROUP BY team;

SELECT first_name, last_name, quiz_points FROM people
WHERE quiz_points = (SELECT MAX(quiz_points) FROM people);

SELECT * FROM people 
WHERE state_code = (SELECT state_abbrev FROM states WHERE state_name = 'Kansas');

SELECT LOWER(first_name), UPPER(last_name) FROM people;

SELECT first_name, SUBSTR(last_name, 1, 5) FROM people;

SELECT REPLACE(first_name, "a", "-") FROM people;

SELECT quiz_points FROM people ORDER BY CAST(quiz_points AS CHAR);

SELECT MAX(CAST(quiz_points AS CHAR)) FROM people;

SELECT first_name AS firstname, UPPER(last_name) AS surname
FROM people WHERE firstname = 'Laura';