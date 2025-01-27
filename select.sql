SELECT 'Hello World!';

SELECT first_name FROM people;

SELECT 'first_name' FROM people;

SELECT first_name, last_name FROM people;

SELECT * FROM people;

SELECT first_name, company, state_code FROM people;

SELECT company, first_name, quiz_points FROM people;

SELECT * FROM people WHERE state_code = 'CA';

SELECT * FROM people WHERE state_code = 'ca';

SELECT * FROM people WHERE shirt_or_hat = 'shirt';

SELECT * FROM people WHERE state_code = 'CA' AND shirt_or_hat = 'shirt';

SELECT team, first_name, last_name
FROM people 
WHERE state_code = 'CA' AND shirt_or_hat = 'shirt' AND team IS NOT 'Angry Ants';

SELECT shirt_or_hat, state_code, first_name, last_name
FROM people 
WHERE (state_code = 'CA' OR state_code = 'CO') AND shirt_or_hat = 'shirt';

SELECT * FROM people WHERE state_code LIKE '%N';

SELECT * FROM people WHERE first_name LIKE 'J%';

SELECT * FROM people WHERE first_name LIKE 'B%N';

SELECT * FROM people WHERE company LIKE '%LLC' LIMIT 5;

SELECT * FROM people WHERE company LIKE '%LLC' LIMIT 5 OFFSET 5;

SELECT first_name, last_name FROM people ORDER BY first_name;

SELECT first_name, last_name FROM people ORDER BY first_name ASC;

SELECT first_name, last_name FROM people ORDER BY first_name DESC;

SELECT state_code, first_name, last_name FROM people ORDER BY state_code, last_name;

SELECT first_name, LENGTH(first_name) FROM people;

SELECT DISTINCT(first_name) FROM people ORDER BY first_name;

SELECT COUNT(*) FROM people WHERE state_code = 'CA';