SELECT id_number, first_name, state_code, team FROM people
JOIN states ON people.state_code = states.state_abbrev
WHERE first_name = 'Alice' AND state_name = 'Florida' AND team LIKE '%Cobras';