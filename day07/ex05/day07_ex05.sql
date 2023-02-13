SELECT p.name
FROM person AS p
    JOIN person_order po ON p.id = po.person_id
GROUP BY name
ORDER BY name;