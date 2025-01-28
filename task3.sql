SELECT state_name, MAX(quiz_points) AS maxpoints, CAST(AVG(quiz_points) AS INT) AS avgpoints
FROM people JOIN states ON people.state_code = states.state_abbrev
GROUP BY state_code ORDER BY avgpoints DESC;