SELECT m.pizza_name AS pizza_name,
       m.price AS price,
       piz.name AS pizzeria_name
FROM person_order AS po
    FULL JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria piz ON m.pizzeria_id = piz.id
WHERE m.id IN
    ((
        SELECT id AS menu_id
        FROM menu
        EXCEPT
        SELECT menu_id AS menu_id
        FROM person_order
        ORDER BY menu_id
    ))
ORDER BY pizza_name,
         price;