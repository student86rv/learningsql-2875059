SELECT first_name, state_code, states.division 
FROM people 
JOIN states ON people.state_code = states.state_abbrev;

SELECT first_name, state_code, states.division 
FROM people 
JOIN states ON people.state_code = states.state_abbrev
WHERE people.first_name LIKE 'J%' AND states.region = 'South';

SELECT people.first_name, states.state_name
FROM people, states
WHERE people.state_code = states.state_abbrev;

SELECT p.first_name, s.state_name
FROM people p, states s
WHERE p.state_code = s.state_abbrev;

SELECT p.first_name, p.state_code, s.state_abbrev, s.state_name
FROM people p JOIN states s ON p.state_code = s.state_abbrev;

SELECT p.first_name, p.state_code, s.state_abbrev, s.state_name
FROM people p LEFT JOIN states s ON p.state_code = s.state_abbrev;

SELECT p.first_name, p.state_code, s.state_abbrev, s.state_name
FROM people p RIGHT JOIN states s ON p.state_code = s.state_abbrev;

SELECT p.first_name, p.state_code, s.state_abbrev, s.state_name
FROM people p FULL OUTER JOIN states s ON p.state_code = s.state_abbrev;

SELECT first_name, COUNT(first_name) FROM people GROUP BY first_name;

SELECT state_code, quiz_points, COUNT(quiz_points) FROM people
GROUP BY state_code, quiz_points;