SELECT piz.name AS pizzeria_name
FROM person AS p
     JOIN person_visits pv ON p.id = pv.person_id
     JOIN pizzeria piz ON pv.pizzeria_id = piz.id
WHERE p.name = 'Andrey'
EXCEPT
SELECT piz.name AS pizzeria_name
FROM person AS p
    JOIN person_order po ON p.id = po.person_id
    JOIN menu m ON m.id = po.menu_id
    JOIN pizzeria piz ON m.pizzeria_id = piz.id
WHERE p.name = 'Andrey'
ORDER BY pizzeria_name;