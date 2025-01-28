SELECT s.region, p.team, COUNT(p.team)
FROM people p
JOIN states s ON p.state_code = s.state_abbrev
GROUP BY s.region, p.team;