SELECT p.name AS person_name,
       m.pizza_name AS pizza_name,
       piz.name AS pizzeria_name
FROM person AS p
    JOIN person_order po ON p.id = po.person_id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria piz ON m.pizzeria_id = piz.id
ORDER BY person_name,
         pizza_name,
         pizza_name;
