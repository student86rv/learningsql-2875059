INSERT INTO people (first_name) VALUES ('Bob');

SELECT * FROM people;

INSERT INTO people (first_name, last_name, state_code, city, shirt_or_hat)
VALUES ('Mary', 'Hamilton', 'OR', 'Portland', 'hat');

INSERT INTO people (first_name, last_name)
VALUES ('George', 'White'), ('Jenn', 'Smith'), ('Carol', NULL);

SELECT * FROM people WHERE first_name = 'Carlos';

UPDATE people SET last_name = 'Morrison' WHERE last_name = 'Morrrison';

UPDATE people SET last_name = 'Morrison' WHERE id_number = 175;

SELECT * FROM people WHERE company = 'Fisher LLC';

UPDATE people SET company = 'Megacorp Inc' WHERE company = 'Fisher LLC';

SELECT * FROM people WHERE id_number = 1001;

DELETE FROM people WHERE id_number = 1001;

SELECT * FROM people WHERE quiz_points IS NULL;

DELETE FROM people WHERE quiz_points IS NULL;