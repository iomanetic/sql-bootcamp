SELECT p.name AS name,
       count(*) AS count_of_visits
FROM person_visits AS pv
    JOIN person p on pv.person_id = p.id
GROUP BY p.name
ORDER BY count_of_visits DESC, p.name
LIMIT 4;