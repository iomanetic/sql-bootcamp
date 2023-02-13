SELECT p.name AS name,
       count(pv.pizzeria_id) AS count_of_visits
FROM person AS p
    JOIN person_visits pv on p.id = pv.person_id
GROUP BY p.name
HAVING count(pv.pizzeria_id) > 3;