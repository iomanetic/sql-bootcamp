INSERT INTO menu (id, pizzeria_id, pizza_name, price)
VALUES ((
            SELECT MAX(id)
            FROM menu
        ) + 1,
        (
            SELECT id
            FROM pizzeria AS piz
            WHERE piz.name = 'Dominos'
        ), 'sicilian pizza', 900);