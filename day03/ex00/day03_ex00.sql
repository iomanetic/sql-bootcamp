SELECT m.pizza_name AS pizza_name,
       m.price AS price,
       piz.name AS pizzeria_name,
       pv.visit_date AS visit_date
FROM person AS p
    JOIN person_visits pv ON p.id = pv.person_id
    JOIN pizzeria piz ON pv.pizzeria_id = piz.id
    JOIN menu m ON piz.id = m.pizzeria_id
WHERE p.name = 'Kate'
  AND m.price BETWEEN 800 AND 1000
ORDER BY pizza_name,
         price,
         pizza_name;