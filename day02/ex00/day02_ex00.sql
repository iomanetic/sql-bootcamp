SELECT name AS pizzeria_name,
       rating AS rating
FROM pizzeria
    LEFT JOIN person_visits pv ON pizzeria.id = pv.pizzeria_id
WHERE pv.pizzeria_id IS NULL