SELECT m.pizza_name AS pizza_name,
       piz.name AS pizzeria_name,
       m.price AS price
FROM menu AS m
    JOIN pizzeria AS piz ON m.pizzeria_id = piz.id
WHERE m.pizza_name = 'mushroom pizza'
   OR m.pizza_name = 'pepperoni pizza'
ORDER BY pizza_name,
         pizzeria_name;
